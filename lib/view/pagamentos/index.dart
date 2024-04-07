import 'package:flutter/material.dart';
import 'package:modernoaqui/models/product.dart';
import 'package:modernoaqui/themes/customColors.dart';

class Pagamentos extends StatefulWidget {
  List<Product> listProducts = [];
  double valor = 0.0;
  Pagamentos({super.key, required this.valor, required this.listProducts});

  @override
  State<Pagamentos> createState() => _IndexState();
}

class _IndexState extends State<Pagamentos> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagamentos"),
      ),
      body: Column(
        children: [
          const Text(
            "Cumpon de fiscal de pagamento",
            style: TextStyle(fontSize: 30),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.listProducts.length,
              itemBuilder: (contex, index) {
                final item = widget.listProducts[index];
                return Container(
                  color: index % 2 == 0 ? Colors.grey[300] : Colors.grey[400],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Text("${item.quantity}")),
                      Expanded(child: Text("R\$ ${item.codigoBarras}")),
                      Expanded(child: Text("QT ${item.description}")),
                      /*Expanded(
                        child: Text(
                          "R\$ ${item[index] * item[index]}",
                        ),
                      ),*/
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: 450,
            decoration: BoxDecoration(
              color: CustomColors.success,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Total: ${(widget.valor).toStringAsFixed(2)}",
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 70,
                child:
                    ElevatedButton(onPressed: () {}, child: const Text("Pix")),
              ),
              SizedBox(
                  width: 110,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Dinheiro"))),
              SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Debito"))),
              SizedBox(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Credito"))),
              SizedBox(
                width: 110,
                height: 70,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Cancelar")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
