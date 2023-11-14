import '../../../core/app_export.dart';
import 'demandes_item_model.dart';

/// This class defines the variables used in the [demandes_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DemandesModel {
  Rx<List<DemandesItemModel>> demandesItemList = Rx([
    DemandesItemModel(
        demandeCounter: "Demande 01".obs,
        widget: "23:12 31-10-2023".obs,
        description:
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif."
                .obs),
    DemandesItemModel(
        demandeCounter: "Demande 02".obs,
        widget: "23:12 31-10-2023".obs,
        description:
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif."
                .obs),
    DemandesItemModel(
        demandeCounter: "Demande 03".obs,
        widget: "23:12 31-10-2023".obs,
        description:
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif."
                .obs),
    DemandesItemModel(
        demandeCounter: "Demande 04".obs,
        widget: "23:12 31-10-2023".obs,
        description:
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif."
                .obs),
    DemandesItemModel(
        demandeCounter: "Demande 05".obs,
        widget: "23:12 31-10-2023".obs,
        description:
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif."
                .obs)
  ]);
}
