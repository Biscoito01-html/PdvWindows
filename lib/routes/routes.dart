import 'package:flutter/material.dart';
import 'package:modernoaqui/view/home_page.dart';
import 'package:modernoaqui/view/login.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => Login(),
    '/HomePage': (context) => const HomePage(),
    //'/pagamentos': (context) => Pagamentos(),
  };
}
