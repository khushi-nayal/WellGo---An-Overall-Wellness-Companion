import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFFF8F8F8);
const kActiveIconColor = Color(0xFFE68342);
const kTextColor = Color(0xFF222B45);
const kBlueLightColor = Color(0xFFC7B8F5);
const kBlueColor = Color(0xFF817DC0);
const kShadowColor = Color(0xFFE6E6E6);
// Dropdown selection
const List<String> dropdownItems = ['Night\'s Sleep', 'Nap'];

List<List> pickerData = [
  List<int>.generate(13, (i) => i).toList(),
  List<int>.generate(60, (i) => i).toList(),
];
