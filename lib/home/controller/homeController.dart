import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {

  int counter = 0;

  void onCounterIncrement() {
    counter++;
    notifyListeners();
  }
}
