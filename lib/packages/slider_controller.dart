import 'package:flutter/material.dart';
import 'package:slider/utilz/model.dart';

class SliderController extends ChangeNotifier {
  int _pageIndex = 0;

  int get pageIndex => _pageIndex;

  final List<DataModel> _screenData = [
    DataModel(
      image: 'assets/images/skype1.png',
      color: const Color(0xffdad4c8),
      text: 'Track your work and get the result',
      text2: 'Remember to keep track of your professional accomplishments.',
    ),
    DataModel(
      image: 'assets/images/skype2.png',
      color: const Color(0xffffe5de),
      text: 'Stay Organized  with team',
      text2:
          'But understanding the contributions our colleagues make to our teams and companies',
    ),
    DataModel(
      image: 'assets/images/skype3.png',
      color: const Color(0xffdbf6e5),
      text: 'Get notified when work happens',
      text2:
          'Take control of notifications collaborate live or on your own time',
    ),
  ];
  List<DataModel> get screenData => _screenData;

  void setPage(int index) {
    _pageIndex = index;
    notifyListeners();
  }

  void backPage(int index) {
    _pageIndex = index - 1;
    notifyListeners();
  }
}
