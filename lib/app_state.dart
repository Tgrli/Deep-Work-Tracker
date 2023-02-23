import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _timerState = false;
  bool get timerState => _timerState;
  set timerState(bool _value) {
    _timerState = _value;
  }

  int _Time = 0;
  int get Time => _Time;
  set Time(int _value) {
    _Time = _value;
  }

  int _tTime = 0;
  int get tTime => _tTime;
  set tTime(int _value) {
    _tTime = _value;
  }

  int _counterDeep = 0;
  int get counterDeep => _counterDeep;
  set counterDeep(int _value) {
    _counterDeep = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
