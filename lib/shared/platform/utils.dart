import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PlatformUtils {
  static const int mobileWidthConstraint = 600;

  static bool isMobileFromWindow() {
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    return data.size.shortestSide < mobileWidthConstraint;
  }

  static bool isMobileFromContext(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide < mobileWidthConstraint;
  }

  static Future<String?> getEnvVar(String varName) async {
    await dotenv.load(fileName: '.env');
    return dotenv.env[varName];
  }
}
