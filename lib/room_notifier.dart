import 'package:flutter/material.dart';

class RoomNotifier extends ChangeNotifier {
  bool _topSink = false;
  bool _bottomSink = false;

  int _topSinkType = 0; // 상부장 타입
  int _bottomSinkType = 0;

  int _topSinkIndex = 0;
  int _bottomSinkIndex = 0;

  int _handleType = 0;

  void setTopSink(bool value) {
    _topSink = value;
    notifyListeners();
  }

  bool getTopSink() {
    return _topSink;
  }

  void setBottomSink(bool value) {
    _bottomSink = value;
    notifyListeners();
  }

  bool getBottomSink() {
    return _bottomSink;
  }

  int get topSinkType {
    return _topSinkType;
  }

  set topSinkType(int type) {
    _topSinkType = type;
    notifyListeners();
  }

  int get bottomSinkType {
    return _bottomSinkType;
  }

  set bottomSinkType(int type) {
    _bottomSinkType = type;
    notifyListeners();
  }

  int get topSinkIndex {
    return _topSinkIndex;
  }

  set topSinkIndex(int index) {
    _topSinkIndex = index;
    notifyListeners();
  }

  int get bottomSinkIndex {
    return _bottomSinkIndex;
  }

  set bottomSinkIndex(int index) {
    _bottomSinkIndex = index;
    notifyListeners();
  }

  int get handleType {
    return _handleType;
  }

  set handleType(int type) {
    _handleType = type;
    notifyListeners();
  }
}
