import 'package:flutter/material.dart';
import 'package:modernoaqui/view/caixa/index.dart';
import 'package:modernoaqui/view/home/home_page.dart';
import 'package:modernoaqui/view/login/login.dart';
import 'package:modernoaqui/view/pedidos/index.dart';
import 'package:modernoaqui/view/products/product_exibir.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => Login(),
    '/HomePage': (context) => const HomePage(),
    '/pedidos': (context) => const PedidosRealizados(),
    '/produtos': (context) => const ProductExibir(),
    "/pagamentos": (context) => const CaixaPagamentos()
  };
}
