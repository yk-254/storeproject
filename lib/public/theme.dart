import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    //* swatch
    
    primarySwatch: Colors.brown,
    primaryColor: const Color(0xff775834),
    //* primary
    // // ignore: deprecated_member_use
    // accentColor: const Color(0xffBC9160),
    iconTheme: const IconThemeData(size: 25, color: Color(0xFF707070)),
    errorColor: const Color(0xFFEC1B1B),
    hintColor: const Color(0xFFC5C5C5),
    cardColor: Colors.white,
    splashColor:
        const Color(0xFFC5C5C5), // canvasColor:const Color(0xFFF3DC10),
    backgroundColor:  Color(0xfffafafa),
    //* appbar
    appBarTheme: const AppBarTheme(
        color: Color(0xffD31825),
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white)),
    //* tabbar
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Color(0xFF609FFF),
          width: 2,
        ),
      ),
    ),
    //*  scaffold
    scaffoldBackgroundColor: const Color(0xffF5F7FA),
    //* elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        // side: MaterialStateProperty.all<BorderSide>(BorderSide()),
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xffD31825),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    //* fonts
    fontFamily: 'Shabnam',
    //* input decoration
    inputDecorationTheme: InputDecorationTheme(
        fillColor: Color(0xffF5F7FA),
        filled: true,
        hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.2),),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xff775834),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xff775834),
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        suffixIconColor: const Color(0xff775834).withOpacity(0.5),
        prefixIconColor: const Color(0xff775834).withOpacity(0.5),
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5)),
        
  );
}

extension ColorSchemeLight on ColorScheme {
  Color get borderInputColor => const Color(0xFFCCCCCC);
  Color get greytodark => const Color(0xFF707070);
}
