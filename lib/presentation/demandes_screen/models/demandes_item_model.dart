import '../../../core/app_export.dart';

/// This class is used in the [demandes_item_widget] screen.
class DemandesItemModel {
  DemandesItemModel({
    this.demandeCounter,
    this.widget,
    this.description,
    this.id,
  }) {
    demandeCounter = demandeCounter ?? Rx("Demande 01");
    widget = widget ?? Rx("23:12 31-10-2023");
    description = description ??
        Rx("Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif.");
    id = id ?? Rx("");
  }

  Rx<String>? demandeCounter;

  Rx<String>? widget;

  Rx<String>? description;

  Rx<String>? id;
}
