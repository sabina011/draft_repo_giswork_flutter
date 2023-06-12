import 'package:flutter/widgets.dart';

import '../../constant/app_const.dart';

class CheckDropDownValue extends ChangeNotifier {
  bool dayItemSelected = false;
  int selectedDay = 1;
  List<int> valueSelectionDropDownList = [];

  void selectListItem(int item) {
    selectedDay = item;
    notifyListeners();
  }

  void itemSelectedCheck() {
    dayItemSelected = true;
    notifyListeners();
  }

  void dropDownCreator(){
    for (int i = 0; i < user_day_max_day; i++) {
      valueSelectionDropDownList.add(i+1);
    }
    notifyListeners();
  }
}
