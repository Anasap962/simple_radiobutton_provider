import 'package:flutter/material.dart';

class Change extends ChangeNotifier {
  String? gender;
  radio(value) {
    gender = value;
    notifyListeners();
  }
}
