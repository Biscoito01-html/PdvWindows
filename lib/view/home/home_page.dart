import 'package:flutter/material.dart';
import 'package:modernoaqui/components/drawer.dart';
import 'package:modernoaqui/models/product.dart';
import 'package:modernoaqui/service/state_product.dart';
import 'package:modernoaqui/themes/customColors.dart';
import 'package:modernoaqui/utils/list_product.dart';
import 'package:modernoaqui/utils/string_const_gerais.dart';
import 'package:modernoaqui/view/pagamentos/index.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// Define o estado do widget HomePage
class _HomePageState extends State<HomePage> {
  TextEditingController pesquisaController = TextEditingController();
  TextEditingController quantidadeController = TextEditingController();
  List<Product> filteredList = [];
//finalizar
  @override
  void dispose() {
    super.dispose();
    pesquisaController.dispose();
    quantidadeController.dispose();
  }

  @override
  void initState() {
    super.initState();
    filteredList = listProduct;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var total = _amountProducts();
    final provider = Provider.of<StateProduct>(context).getListProduct();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
        title: const Text(
          StringConstGerais.appName,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: TextFormField(
              controller: pesquisaController,
              onChanged: (value) {
                _filterProducts(value);
              },
              decoration: InputDecoration(
                labelText: "Codigo de barras / Nome do Item",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.all(1),
                width: size.width * 0.49,
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors.infoDark,
                ),
                child: _buildAvailableProducts(),
              ),
              Container(
                margin: const EdgeInsets.all(1),
                width: size.width * 0.49,
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors.infoDark,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Cupom fiscal',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const Divider(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: size.width * 0.49,
                height: 100,
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors.infoDark,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subtotal: R\$ ${(total).toStringAsFixed(2)}",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const Text("Desconto: R\$ 0.00",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    const Text("Cociente: R\$ 0.00",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.49,
                height: 100,
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors.infoDark,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Total: ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "R\$ ${total.toStringAsFixed(2)}",
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 600,
            height: 50,
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Finalizar")),
          )
        ],
      ),
      drawer: const DrawerComponente(),
    );
  }

  Widget _buildAvailableProducts() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Código",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Descrição",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Expanded(
                child: Text(
                  "Preço",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 5),
        Expanded(
          child: ListView.builder(
            itemCount: filteredList.length,
            itemBuilder: (context, index) {
              final item = filteredList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                child: InkWell(
                  focusColor: Colors.amberAccent,
                  onTap: () async {
                    await showDialog(
                      context: context,
                      builder: (builder) {
                        return AlertDialog(
                          title: Text("${item.description}"),
                          content: TextFormField(
                            controller: quantidadeController,
                            keyboardType: TextInputType.number,
                            validator: (value) =>
                                value!.isEmpty ? "Preencha o campo" : null,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                final provider = Provider.of<StateProduct>(
                                    context,
                                    listen: false);

                                if (quantidadeController.text.contains(',')) {
                                  quantidadeController.text =
                                      quantidadeController.text
                                          .replaceAll(',', '.');
                                }
                                provider.addProduct(
                                  Product(
                                    id: item.id,
                                    dateEntrada: item.dateEntrada,
                                    validade: item.validade,
                                    description: item.description,
                                    price: item.price,
                                    quantity:
                                        double.parse(quantidadeController.text),
                                    codigoBarras: item.codigoBarras,
                                  ),
                                );
                                quantidadeController.text = "";
                                Navigator.pop(context);
                              },
                              child: const Text("Ok"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancelar"),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "${item.codigoBarras}",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "${item.description}",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "R\$ ${item.price}",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  double _amountProducts() {
    final provider = Provider.of<StateProduct>(context);
    var total = 0.0;
    // final item = provider.getListProduct().values.toList();
    // for (var i = 0; i < item.length; i++) {
    // total += item[i].price! * item[i].quantity!;
    //}
    return total;
  }

  void _filterProducts(String keyword) {
    setState(() {
      filteredList = listProduct
          .where((product) =>
              product.description!
                  .toLowerCase()
                  .contains(keyword.toLowerCase()) ||
              product.codigoBarras!
                  .toLowerCase()
                  .contains(keyword.toLowerCase()))
          .toList();
    });
  }
}
