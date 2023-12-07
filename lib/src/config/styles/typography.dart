import 'package:flutter/material.dart';

abstract class AppTypography {
  const AppTypography._();

  static const sfProText = 'SF Pro Text';
  static const sfProDisplay = 'SF Pro Display';

  static const titleMedium = TextStyle(
    fontFamily: sfProDisplay,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const titleSmall = TextStyle(
    fontFamily: sfProText,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: -.56,
  );

  static const bodyLarge = TextStyle(
    fontFamily: sfProText,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: -.4,
  );

  static const bodyMedium = TextStyle(
    fontFamily: sfProText,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: -.48,
  );
}
