import 'package:flutter/material.dart';
import 'package:modernoaqui/themes/customColors.dart';

class DrawerComponente extends StatelessWidget {
  const DrawerComponente({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: CustomColors.primary),
            child: Icon(
              Icons.person_2_rounded,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.point_of_sale_sharp,
              color: CustomColors.primary,
            ),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Caixa',
                  style: TextStyle(color: CustomColors.primary),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_support,
              color: CustomColors.primary,
            ),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Suporte',
                  style: TextStyle(color: CustomColors.primary),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.real_estate_agent,
              color: CustomColors.primary,
            ),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pedidos',
                  style: TextStyle(color: CustomColors.primary),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, '/pedidos');
            },
          ),
        ],
      ),
    );
  }
}
