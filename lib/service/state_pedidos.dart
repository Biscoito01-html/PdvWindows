import 'package:flutter/material.dart';
import 'package:modernoaqui/models/pedidos.dart';

class PedidosProvider with ChangeNotifier {
  List<Pedidos> listProduct = [];

  void addProduct(Pedidos product) {
    listProduct.add(product);
    notifyListeners();
  }

  void removeProduct(String id) {
    listProduct.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  void updateProduct(Pedidos product) {
    listProduct.removeWhere((element) => element.id == product.id);
    listProduct.add(product);
    notifyListeners();
  }
}
