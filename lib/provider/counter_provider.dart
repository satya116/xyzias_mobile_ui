import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  // CounterProvider();

  int counter = 0;

  void increaseCount() {
    counter = counter + 1;
    notifyListeners();
  }
}
