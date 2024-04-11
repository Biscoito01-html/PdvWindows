class Product {
  String _id;
  String _codigoBarras;
  String _description;
  double _price;
  double _quantity;
  String _dateEntrada;
  String _validade;

  Product({
    required String id,
    required String codigoBarras,
    required String description,
    required double price,
    required double quantity,
    required String dateEntrada,
    required String validade,
  })  : _id = id,
        _codigoBarras = codigoBarras,
        _description = description,
        _price = price,
        _quantity = quantity,
        _dateEntrada = dateEntrada,
        _validade = validade;

  String get id => _id;
  String get codigoBarras => _codigoBarras;
  String get description => _description;
  double get price => _price;
  double get quantity => _quantity;
  String get dateEntrada => _dateEntrada;
  String get validade => _validade;

  void entradaQuantidade(double entrada) {
    _quantity += entrada;
  }

  bool verificaValidade() {
    DateTime dataValidade = DateTime.parse(_validade);
    DateTime dataEntrada = DateTime.parse(_dateEntrada);
    return dataValidade.isAfter(dataEntrada) ||
        dataValidade.isAtSameMomentAs(dataEntrada);
  }

  void alteraPrice(double newPrice) {
    _price = newPrice;
  }

  void alteraDescricao(String newDescription) {
    _description = newDescription;
  }

  void alteraData(String newData) {
    _dateEntrada = newData;
  }

  void alteraCodigoBarras(String newCode) {
    _codigoBarras = newCode;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'codigoBarras': _codigoBarras,
      'description': _description,
      'price': _price,
      'quantity': _quantity,
      'date': _dateEntrada,
      'isValidade': _validade,
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'codigoBarras': _codigoBarras,
      'description': _description,
      'price': _price,
      'quantity': _quantity,
      'date': _dateEntrada,
      'isValidade': _validade,
    };
  }

  void fromMap(Map<String, dynamic> json) {
    _id = json['id'];
    _codigoBarras = json['codigoBarras'];
    _description = json['description'];
    _price = json['price'];
    _quantity = json['quantity'];
    _dateEntrada = json['date'];
    _validade = json['isValidade'];
  }

  fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _codigoBarras = json['codigoBarras'];
    _description = json['description'];
    _price = json['price'];
    _quantity = json['quantity'];
    _dateEntrada = json['date'];
    _validade = json['isValidade'];
  }

  @override
  String toString() {
    return 'Product{id: $_id, codigoBarras: $_codigoBarras, description: $_description, price: $_price, quantity: $_quantity, date: $_dateEntrada, isValidade: $_validade}';
  }
}
