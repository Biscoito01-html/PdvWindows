import 'package:flutter/material.dart';
import 'package:modernoaqui/routes/routes.dart';
import 'package:modernoaqui/service/state_product.dart';
import 'package:modernoaqui/themes/themes.dart';
import 'package:modernoaqui/utils/string_const_gerais.dart';
import 'package:modernoaqui/view/login/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StateProduct()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            StringConstGerais.appName,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Login(),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.routes,
    );
  }
}
