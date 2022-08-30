import 'package:flutter/material.dart';

class AppState extends ChangeNotifier{
  int selectedCategroyId = 0;

  void updateCategoryId(int selectedCategoryId){
    this.selectedCategroyId = selectedCategroyId;
    notifyListeners();
  }
}