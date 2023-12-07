import 'package:effective_flutter_lab/src/config/styles/styles.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  const AppThemes._();

  static final light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      brightness: Brightness.light,
      background: AppColors.lotion,
      onBackground: Colors.white,
      primary: Colors.black,
      onPrimary: AppColors.greenPigment,
    ),
    textTheme: TextTheme(
      titleMedium: AppTypography.titleMedium.copyWith(
        color: Colors.black,
      ),
      titleSmall: AppTypography.titleSmall.copyWith(
        color: Colors.black,
      ),
      bodyLarge: AppTypography.bodyLarge.copyWith(
        color: Colors.black,
      ),
      bodyMedium: AppTypography.bodyMedium.copyWith(
        color: Colors.black,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: AppTypography.bodyLarge,
      labelColor: Colors.black,
      unselectedLabelStyle: AppTypography.bodyLarge,
      unselectedLabelColor: Colors.black.withOpacity(.55),
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 4,
            color: AppColors.philippineGreen,
          ),
        ),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: Colors.black.withOpacity(.12),
      dividerHeight: 2,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      titleSpacing: 0,
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
      horizontalTitleGap: 12,
      titleTextStyle: AppTypography.bodyLarge.copyWith(
        color: Colors.black,
      ),
      subtitleTextStyle: AppTypography.bodyMedium.copyWith(
        color: Colors.black.withOpacity(.55),
      ),
    ),
  );
}
