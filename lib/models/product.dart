class Product {
  String? id;
  String? codigoBarras;
  String? name;
  String? description;
  double? price;
  double? quantity;

  Product(
      {this.name,
      this.description,
      this.price,
      this.quantity,
      this.id,
      this.codigoBarras});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    codigoBarras = json['codigoBarras'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['codigoBarras'] = codigoBarras;
    data['description'] = description;
    data['price'] = price;
    data['quantity'] = quantity;

    return data;
  }
}
