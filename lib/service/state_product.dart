import 'package:flutter/material.dart';
import 'package:modernoaqui/models/product.dart';

class StateProduct with ChangeNotifier {
  List<Product> listProduct = [];

  void addProduct(Product product) {
    listProduct.add(product);
    notifyListeners();
  }

  void removeProduct(String id) {
    listProduct.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  void updateProduct(Product product) {
    listProduct.removeWhere((element) => element.id == product.id);
    listProduct.add(product);

    notifyListeners();
  }

  List<Product> getListProduct() {
    return listProduct;
  }

  void clearListProduct() {
    listProduct.clear();
    notifyListeners();
  }
}
