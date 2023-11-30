import 'package:bgpt/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [sign_up_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpTwoModel {
  Rx<DateTime>? selectedDateDEntrE = Rx(DateTime.now());

  Rx<String> dateDEntrE = Rx("Date d’entrée");

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Maroc",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Senegal",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Algerie",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Nouakchott",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Nouadhibou",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Rosso",
    )
  ]);


  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Maroc",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Senegal",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Algerie",
    )
  ]);

}
