import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  int _counter = 0;
  final _listName = <String>[];

  List get listName => _listName;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }

  void addList(String name) {
    if(name.isNotEmpty) _listName.add(name);
    notifyListeners();
  }
}
