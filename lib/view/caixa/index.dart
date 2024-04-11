import 'package:flutter/material.dart';
import 'package:modernoaqui/themes/customColors.dart';

class CaixaPagamentos extends StatefulWidget {
  const CaixaPagamentos({super.key});

  @override
  State<CaixaPagamentos> createState() => _IndexState();
}

class _IndexState extends State<CaixaPagamentos> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagamentos"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: size.width - 40,
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: "Pesquisar",
                  labelStyle: TextStyle(color: CustomColors.primary),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                ),
                onChanged: (value) {
                  print(value);
                },
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Lado esquerdo de caixa
              Container(
                width: size.width / 100 * 45,
                height: size.height / 2,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.grey),
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Text(
                        "Lista de produtos",
                      ),
                    ],
                  ),
                ),
              ),
              //lado direito de caixa
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: size.width / 100 * 45,
                  height: size.height / 2,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.grey),
                  child: const Column(
                    children: [
                      Text(
                        "Lista de compras",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: size.width - 40,
            decoration: BoxDecoration(
              color: CustomColors.success,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "Total:",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  width: 100,
                  height: 70,
                  child: Center(child: Text("Pix")),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  width: 110,
                  height: 70,
                  child: Center(child: Text("Dinheiro")),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  width: 100,
                  height: 70,
                  child: Center(child: Text("Débito")),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  width: 100,
                  height: 70,
                  child: Center(child: Text("Crédito")),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  width: 110,
                  height: 70,
                  child: Center(child: Text("Cancelar")),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
