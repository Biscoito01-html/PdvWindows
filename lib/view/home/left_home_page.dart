import 'package:flutter/material.dart';
import 'package:modernoaqui/components/button_principal.dart';

class LeftHomePage extends StatefulWidget {
  const LeftHomePage({super.key});

  @override
  State<LeftHomePage> createState() => _LeftHomePageState();
}

class _LeftHomePageState extends State<LeftHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonPrincipal(
                button: () {
                  Navigator.pushNamed(context, "/pagamentos");
                },
                icon: const Icon(Icons.home, color: Colors.white),
                text: 'Caixa'),
            ButtonPrincipal(
                button: () {
                  Navigator.pushNamed(context, "/produtos");
                },
                icon: const Icon(Icons.post_add_rounded, color: Colors.white),
                text: 'Produtos'),
            ButtonPrincipal(
                button: () {},
                icon: const Icon(Icons.real_estate_agent_outlined,
                    color: Colors.white),
                text: 'Estoque'),
            ButtonPrincipal(
                button: () {},
                icon: const Icon(Icons.mode_of_travel_rounded,
                    color: Colors.white),
                text: 'Delivery'),
            ButtonPrincipal(
                button: () {},
                icon:
                    const Icon(Icons.rocket_launch_sharp, color: Colors.white),
                text: 'Pedidos'),
          ],
        )
      ],
    );
  }
}
