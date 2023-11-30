import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

part 'database.g.dart';

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get numero_phone => integer()();
  IntColumn get nni => integer()();
  TextColumn get password => text().named('password')();
  DateTimeColumn get entry_date => dateTime().nullable()();
  IntColumn get entry_lieu => integer().nullable()();
  IntColumn get passage_point => integer().nullable()();
  IntColumn get nationality => integer().nullable()();
}

class Orders extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get user_id => integer()();
  TextColumn get reference => text()();
  TextColumn get status => text()();
  TextColumn get created_date => text().nullable()();
  TextColumn get nom_affaire => text().nullable()();
  TextColumn get type_affaire => text().nullable()();
  TextColumn get compte_banc => text().nullable()();
  TextColumn get wilaya => text().nullable()();
  TextColumn get moughataa => text().nullable()();
}

@DriftDatabase(tables: [Users, Orders])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  var uuid = Uuid();

  Future<User?> getUserByPhone(int phone) {
    return (select(users)..where((t) => t.numero_phone.equals(phone))).getSingleOrNull();
  }

  Future<User?> getUserByNni(int nni) {
    return (select(users)..where((t) => t.nni.equals(nni))).getSingleOrNull();
  }

  Future<User?> getUserById(int? id) {
    return (select(users)..where((t) => t.id.equals(id!))).getSingleOrNull();
  }

  Future<int> updateUserData(User user, dynamic data) async {
    return (update(users)..where((col) => col.id.equals(user.id)))
        .write(UsersCompanion(
      entry_date: Value(DateTime.parse(data['entry_date'])),
      entry_lieu: Value(data['entry_liey']),
      passage_point: Value(data['passage_point']),
      nationality: Value(data['nationality'])
    ));
  }

  Future<int> storeDemande(dynamic data) async {
    return into(orders).insert(OrdersCompanion.insert(
      user_id: data['user_id'],
      reference: uuid.v1(),
      status: "En attend",
      created_date: Value(DateTime.now().toString()),
      nom_affaire: Value(data['nom_affaire']),
      type_affaire: Value(data['type_affaire']),
      wilaya: Value(data['wilaya']),
      moughataa: Value(data['moughataa']),
      compte_banc: Value(data['moughataa'])
    ));
  }

  Future<List<Order?>> getAllDemands(int id) {
    return (select(orders)..where((t) => t.user_id.equals(id))).get();
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

