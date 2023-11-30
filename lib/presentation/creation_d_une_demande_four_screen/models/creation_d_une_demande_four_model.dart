import 'package:bgpt/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'creationdemandefour_item_model.dart';

/// This class defines the variables used in the [creation_d_une_demande_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreationDUneDemandeFourModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Plombier",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Coiffeur",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Chauffeur",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Boucher",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Travailleur",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Travailleur independant",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Salarier",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Entrepreneur",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList3 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Nouakchott-sud",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Nouakchott-ouest",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Nouakchott-nord",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList4 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Dar-Naim",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Toujounine",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Tevragh Zeina",
    )
  ]);

  Rx<List<CreationdemandefourItemModel>> creationdemandefourItemList = Rx([
    CreationdemandefourItemModel(
        uploadSomeFiles: "Importer le releve de compte".obs),
    CreationdemandefourItemModel(
        uploadSomeFiles: "Importer la facture SNDE".obs),
    CreationdemandefourItemModel(
        uploadSomeFiles: "Importer la facture Somelec".obs),
    CreationdemandefourItemModel(uploadSomeFiles: "Importer votre sejour".obs)
  ]);
}
