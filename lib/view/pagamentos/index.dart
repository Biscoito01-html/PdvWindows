import 'package:flutter/material.dart';
import 'package:modernoaqui/service/state_caix.dart';

import 'package:provider/provider.dart';

class Pagamentos extends StatefulWidget {
  double valor = 0.0;
  Pagamentos({super.key, required this.valor});

  @override
  State<Pagamentos> createState() => _IndexState();
}

class _IndexState extends State<Pagamentos> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CaixaProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagamentos"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                provider.setValores("pix", widget.valor);
                Navigator.pop(context);
              },
              child: const Text("Pix")),
          ElevatedButton(onPressed: () {}, child: const Text("Dinheiro")),
          ElevatedButton(onPressed: () {}, child: const Text("Debito")),
          ElevatedButton(onPressed: () {}, child: const Text("Credito")),
          ElevatedButton(onPressed: () {}, child: const Text("Cancelar")),
        ],
      ),
    );
  }
}
