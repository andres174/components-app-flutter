import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;
  static const Color textPrimaryColor = Colors.white;
  static const Color primaryColor900 =  Color.fromRGBO(26, 35, 126, 1);


  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: primaryColor,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: textPrimaryColor,
        fontSize: 20
      ),
      color: primaryColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: textPrimaryColor
      )
    ),
    textButtonTheme: const TextButtonThemeData(
      // * Solución con base en la documentación
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(primaryColor)
      )
      // ! Solución del curso no funciona
      //style: TextButton.styleFrom(primary: primaryColor)
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: textPrimaryColor,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(primaryColor),
        shape: MaterialStatePropertyAll(StadiumBorder()),
        foregroundColor: MaterialStatePropertyAll(textPrimaryColor),
      )
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primaryColor
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), 
          topRight: Radius.circular(10)
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), 
          topRight: Radius.circular(10)
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), 
          topRight: Radius.circular(10)
        ),
      ),
    ),
  );

}