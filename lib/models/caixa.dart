class Caixa {
  String? id;
  String? data;
  double valores;

  Caixa({required this.id, required this.data, required this.valores}) {
    id = id ?? '';
    data = data ?? '';
    valores = valores;
  }

  void entradaAoCaixa(double entrada) {
    if (entrada > 0) valores += entrada;
  }

  void retiraDoCaixa(double saida) {
    if (valores > saida && saida > 0) {
      valores -= saida;
    }
  }

  void sangriaCaixa(double valor) {
    if (valores > valor && valor > 0) {
      valores -= valor;
    }
  }

  @override
  String toString() {
    return 'Caixa{valores: $valores, data: $data, id: $id}';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dataMap = <String, dynamic>{};
    dataMap['id'] = id;
    dataMap['data'] = data;
    dataMap['valores'] = valores;
    return dataMap;
  }
}
