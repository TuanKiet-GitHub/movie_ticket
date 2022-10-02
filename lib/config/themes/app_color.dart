import 'package:flutter/material.dart';

class AppColor {
  static Color primaryColor = const Color(0xFF58BBC5);
  static Color secondaryColor = const Color(0xFFFAE591);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color blue = const Color(0xFF3E67E5);
  static Color blackGrey = const Color.fromARGB(255, 91, 89, 89);
  static Color backgroundBlack = const Color.fromARGB(255, 37, 37, 37);
  static Color backgroundWhite = const Color.fromARGB(255, 255, 255, 255);
  static Color backgroundGray = const Color.fromARGB(255, 240, 240, 240);

  static MaterialColor primarySwatch = const MaterialColor(
    0xFF58bbc5,
    {
      50: Color(0xFFacdde2),
      100: Color(0xFF9bd6dc),
      200: Color(0xFF8acfd6),
      300: Color(0xFF79c9d1),
      400: Color(0xFF69c2cb),
      500: Color(0xFF58bbc5),
      600: Color(0xFF4fa8b1),
      700: Color(0xFF46969e),
      800: Color(0xFF3e838a),
      900: Color(0xFF357076),
    },
  );
}
class DarkTheme {
  static final lightBlue = Color(0xFF48cae7).withOpacity(0.1);
  static const blueMain = Color(0xFF3D58F8);
  static const blueIllustration = Color(0xFF2C4BA1);
  static const darkBlueIllustration = Color(0xFF1E3577);
  static const white = Color(0xFFFFFFFF);
  static const grey = Color(0xFFABADBD);
  static const greyBackground = Color(0xFF42476A);
  static const darkGrey = Color(0xFF42476A);
  static const darkBackground = Color(0xFF151D3B);
  static const darkerBackground = Color(0xFF0B0F2F);
  static const veryDark = Color(0xFF051138);
  static const red = Color(0xFFFD4C00);
  static const green = Color(0xFF3E9D9D);
  static const yellow = Color(0xFFFFAF34);
  static const text = Colors.white;
}

class GradientPalette {
  static const blue1 = Color(0xFF3E60F9);
  static const blue2 = Color(0xFF3D54F8);
  static const lightBlue1 = Color(0xFF449EFF);
  static final lightBlue2 = Color(0xFF1DC7F7).withOpacity(0.94);
  static final black1= Color(0xFF111D42).withOpacity(0);
  static const black2 = Color(0xFF111D42);
}
