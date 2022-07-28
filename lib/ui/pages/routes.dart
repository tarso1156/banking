import 'package:flutter/material.dart';

import 'package:banking/ui/pages/account/create/first_step.dart';
import 'package:banking/ui/pages/home/home_page.dart';

class BankingRoutes {
  static Map<String, WidgetBuilder> get() {
    return {
      '/': (context) => const HomePage(),
      '/account/create/first_step': (context) => const CreateAccountFirstStep()
    };
  }
}
