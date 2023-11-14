import '../../../core/app_export.dart';

/// This class is used in the [creationdemandeone_item_widget] screen.
class CreationdemandeoneItemModel {
  CreationdemandeoneItemModel({
    this.uploadSomeFiles,
    this.id,
  }) {
    uploadSomeFiles = uploadSomeFiles ?? Rx("Importer le releve de compte");
    id = id ?? Rx("");
  }

  Rx<String>? uploadSomeFiles;

  Rx<String>? id;
}
