// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:modernoaqui/themes/customColors.dart';

class ButtonPrincipal extends StatelessWidget {
  Function button;
  Icon icon;
  String text;

  ButtonPrincipal(
      {super.key,
      required this.button,
      required this.icon,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        button();
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: CustomColors.primary),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
