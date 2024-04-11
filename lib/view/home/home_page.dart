import 'package:flutter/material.dart';
import 'package:modernoaqui/components/drawer.dart';
import 'package:modernoaqui/utils/string_const_gerais.dart';
import 'package:modernoaqui/view/home/left_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringConstGerais.appName),
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: LeftHomePage()),
              ],
            ),
          ],
        ),
      ),
      drawer: const DrawerComponente(),
    );
  }
}
