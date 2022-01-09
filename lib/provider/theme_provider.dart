import 'package:flutter/material.dart';

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
  ThemeChanger();
  get islightbool => this.islight;

  get getTheme => islight ? lightTheme : darkTheme;
  void setTheme() {
    islight = !islight;
    notifyListeners();
  }
}
