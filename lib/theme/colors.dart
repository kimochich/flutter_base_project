import 'package:flutter/material.dart';

class AppColors {

  AppColors._();

  static const Color bgColor = Color(0xfff7f7f7);
  static MaterialColor primaryColor = const MaterialColor(
    0xff2E9E4C,
    <int, Color>{
      50: Color(0xFFF9FDFA),
      100: Color(0xFFF9FDFA),
      200: Color(0xFFE2F9E4),
      300: Color(0xFFB7E4BB),
      400: Color(0xFF62BC6B),
      500: Color(0xff2E9E4C),
      600: Color(0xFF1F7A38),
      700: Color(0xFF206031),
      800: Color(0xFF194D28),
      900: Color(0xFF164122),
    },
  );
  static MaterialColor neutralColor = const MaterialColor(
    0xff899F8F,
    <int, Color>{
      50: Color(0xFFE8F5E9),
      100: Color(0xFFFCFDFC),
      200: Color(0xFFDDE3DF),
      300: Color(0xFFC1CDC4),
      400: Color(0xFFA5B6AA),
      500: Color(0xff899F8F),
      600: Color(0xFF6E8775),
      700: Color(0xFF576B5C),
      800: Color(0xFF404F44),
      900: Color(0xFF222A24),
    },
  );

  static MaterialColor alertColor = const MaterialColor(
    0xff899F8F,
    <int, Color>{
      50: Color(0xFFFFF5F5),
      100: Color(0xFFFFF5F5),
      200: Color(0xFFFFE5E6),
      300: Color(0xFFFEB8B8),
      400: Color(0xFFF46F6F),
      500: Color(0xffDC3C3C),
      600: Color(0xFFBD2828),
      700: Color(0xFFA02222),
      800: Color(0xFF7E1B1B),
      900: Color(0xFF541212),
    },
  );
  static const Color accentColor = Color(0xFF2E9E4C);
  static const Color lightGrey = Color(0xFFBFBFBF);
  static const Color facebook = Color(0xFF3b5998);
  static const Color grey = Color(0xffdbdbdb);
  static const Color inactiveButton = Color(0xFFEAEAEA);
  static const Color activeButton = Color(0xFF2E9E4C);
  static const Color inActiveButton = Color(0xffBBBBBB);
  static const Color textDark = Color(0xff000000);

  static const Color textDefault = Color(0xFF3D4B5C);
  static const Color pickerDefaultColor = Color(0xFF262626);
  static const Color textGray = Color(0xFF969696);
  static const Color borderGray = Color(0xFF7C7D80);
  static const Color textBlack = Color(0xFF29323D);


  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
