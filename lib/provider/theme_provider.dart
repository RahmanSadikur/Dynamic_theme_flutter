import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeData darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    scaffoldBackgroundColor: Colors.black87,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),
    buttonColor: Colors.amber,
  );

  ThemeData lightTheme = ThemeData(
    accentColor: Colors.blue,
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white70,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
    ),
    buttonColor: Colors.green,
  );
  bool islight = true;

  get islightbool => this.islight;

  ThemeChanger() {
    init();
  }
  init() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    islight = _prefs.getBool('theme') != null ? _prefs.getBool('theme') : true;
    notifyListeners();
  }

  get getTheme {
    return islight ? lightTheme : darkTheme;
  }

  void setTheme() async {
    islight = !islight;
    notifyListeners();
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('theme', islight);
  }
}
