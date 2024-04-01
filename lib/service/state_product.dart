import 'package:flutter/material.dart';
import 'package:modernoaqui/models/product.dart';

class StateProduct with ChangeNotifier {
  static Map<String, Product> listProduct = {};

  void addProduct(Product product) {
    listProduct.addAll({product.id!: product});
    notifyListeners();
  }

  void removeProduct(String id) {
    listProduct.remove(id);
    notifyListeners();
  }

  void updateProduct(Product product) {
    listProduct.update(product.id!, (value) => product);
    notifyListeners();
  }

  Map<String, Product> getListProduct() {
    return listProduct;
  }

  void clearListProduct() {
    listProduct.clear();
    notifyListeners();
  }
}
