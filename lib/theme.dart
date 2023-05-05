import 'package:flutter/material.dart';

const kBackgroundColor = Color.fromARGB(255, 00, 0, 0);
const kActiveIconColor = Color(0xFFF8F8F8);
const kTextColor = Color(0x00000000);
const kShadowColor = Color(0xFFE6E6E6);

// FINAL COLORS
const color1 = Color.fromARGB(255, 170, 63, 219);
const color2 = Color.fromARGB(255, 126, 10, 180);
const white = Color.fromARGB(255, 255, 255, 255);
const iconColor = Color.fromARGB(255, 179, 179, 179);

// DECORATIONS
const backgroundGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      white,
      color1,
    ],
  ),
);

const iconBackground = BoxDecoration(
  color: color2,
  borderRadius: BorderRadius.all(Radius.circular(10)),
);

const cardBackground = BoxDecoration(
  color: white,
  borderRadius: BorderRadius.all(Radius.circular(10)),
);

const navbarBackground = BoxDecoration(
  color: color1,
  borderRadius: BorderRadius.all(Radius.circular(10)),
);

const double navbarHeight = 52;
