import 'package:flutter/material.dart';
import 'package:test_task/assets/sizes.dart';

import 'colors.dart';

ThemeData appTheme() => ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey_4),
          borderRadius: BorderRadius.circular(Sizes.p8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey_4),
          borderRadius: BorderRadius.circular(Sizes.p8),
        ),
      ),
  iconButtonTheme: IconButtonThemeData(

  )
    );
