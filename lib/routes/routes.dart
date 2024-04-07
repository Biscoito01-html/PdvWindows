import 'package:flutter/material.dart';
import 'package:modernoaqui/view/home/home_page.dart';
import 'package:modernoaqui/view/login/login.dart';
import 'package:modernoaqui/view/pedidos/index.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => Login(),
    '/HomePage': (context) => const HomePage(),
    '/pedidos': (context) => PedidosRealizados(),
  };
}
