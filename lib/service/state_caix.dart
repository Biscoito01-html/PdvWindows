import 'package:flutter/cupertino.dart';

class CaixaProvider with ChangeNotifier {
  double _total = 0;
  double pixPagamentos = 0;
  double dinheiroPagamentos = 0;
  double debitoPagamentos = 0;
  double creditoPagamentos = 0;

  void setValores(String tipo, double total) {
    Map<String, double> metodoDePagamento = {
      'pix': pixPagamentos,
      'dinheiro': dinheiroPagamentos,
      'debito': debitoPagamentos,
      'credito': creditoPagamentos
    };

    if (metodoDePagamento[tipo] == null) {
      return;
    }
    metodoDePagamento[tipo] = total;
    notifyListeners();
  }
}
