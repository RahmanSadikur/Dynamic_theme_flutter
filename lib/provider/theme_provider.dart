import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeData darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    scaffoldBackgroundColor: Colors.white70,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
    ),
    buttonColor: Colors.green,
  );

  ThemeData lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black87,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),
    buttonColor: Colors.amber,
  );
  bool islight;
  ThemeChanger(this.islight);
  get islightbool => this.islight;

  get getTheme => islight ? lightTheme : darkTheme;
  void setTheme() {
    islight = !islight;
    notifyListeners();
  }
}
