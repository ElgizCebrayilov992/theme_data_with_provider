
import 'package:flutter/material.dart';

class CustomerThemeDataModal extends ChangeNotifier {
  ThemeData _themeData;
  CustomerThemeDataModal(
    this._themeData,
  );
  
  getThemeData()=>_themeData;

  setThemeData(ThemeData data) async {
    _themeData=data;
    notifyListeners();
  }




}
