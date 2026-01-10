import 'package:flutter/material.dart';

import '../common/app_color.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      fontFamily: 'AmazonEmber',
      scaffoldBackgroundColor: AppColor.background,
      bottomSheetTheme: const BottomSheetThemeData(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          modalBackgroundColor: Colors.white),
      colorScheme: const ColorScheme.light(primary: AppColor.secondary),
      appBarTheme: const AppBarTheme(
          elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
      useMaterial3: true,
    );
  }
}
