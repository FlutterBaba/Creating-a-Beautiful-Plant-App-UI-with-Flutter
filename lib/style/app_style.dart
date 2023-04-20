import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  // App Images ..
  static const String bgImage = "assets/images/bg.png";
  static const String profile = "assets/images/profile.jpg";

  /// App Icons.
  static const String searchIcon = "assets/icons/search.svg";
  static const String menuIcon = "assets/icons/menu.svg";
  static const String homeIcon = "assets/icons/home.svg";
  static const String favoriteIcon = "assets/icons/favorite.svg";
  static const String cartIcon = "assets/icons/cart.svg";
  static const String profileIcon = "assets/icons/profile.svg";

// App Colors
  static const primarySwatch = Color(0xff214712);
  static const kIconColor = Color(0xffD9D9D9);

  static ThemeData? theme = ThemeData(
    scaffoldBackgroundColor: const Color(0xfff5f5f5),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primarySwatch,
        fixedSize: const Size.fromHeight(50),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: AppStyle.primarySwatch,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    textTheme: GoogleFonts.interTextTheme().apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
  );
}
