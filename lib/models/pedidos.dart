import 'package:modernoaqui/models/product.dart';

class Pedidos {
  String? id;
  List<Product> listProducts = [];

  Pedidos({this.id, required this.listProducts});

  void addProduct(Product product) {
    listProducts.add(product);
  }

  void removeProduct(String id) {
    listProducts.removeWhere((element) => element.id == id);
  }

  void updateProduct(Product product) {
    listProducts.removeWhere((element) => element.id == product.id);
    listProducts.add(product);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['listProducts'] =
        listProducts.map((product) => product.toMap()).toList();
    return data;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonDados = <String, dynamic>{};
    jsonDados['id'] = id;
    jsonDados['listProducts'] =
        listProducts.map((product) => product.toMap()).toList();
    return jsonDados;
  }

  void fromMap(Map<String, dynamic> json) {
    id = json['id'];
    final List<dynamic> productsJson = json['listProducts'];
    listProducts = productsJson.map((productJson) {
      final product = Product(
          id: '',
          codigoBarras: '',
          description: '',
          price: 0.0,
          quantity: 0.0,
          dateEntrada: '',
          validade: '');
      product.fromJson(productJson);
      return product;
    }).toList();
  }
}
