import 'package:flutter/material.dart';

class ProductExibir extends StatefulWidget {
  const ProductExibir({super.key});

  @override
  State<ProductExibir> createState() => _ProductExibirState();
}

class _ProductExibirState extends State<ProductExibir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produtos"),
      ),
      body: Container(),
    );
  }
}
