class Pedidos {
  String? id;
  List listProducts = [];

  Pedidos({this.id, required this.listProducts});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['listProducts'] = listProducts;
    return data;
  }

  Pedidos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    listProducts = json['listProducts'];
  }

  Map<String, dynamic> get fromJson {
    Map<String, dynamic> jsonDados = <String, dynamic>{};
    jsonDados['id'] = id;
    jsonDados['listProducts'] = listProducts;
    return jsonDados;
  }
}
