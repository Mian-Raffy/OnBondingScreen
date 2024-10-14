import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageNotifier extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  void setPage(int page) {
    _currentPage = page;
    notifyListeners();
  }

  void backPage(int page) {
    _currentPage = page - 1;
    notifyListeners();
  }
}
