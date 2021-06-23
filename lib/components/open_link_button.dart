import 'package:flutter/material.dart';
import 'package:halalcredit/config.dart';
import 'package:superellipse_shape/superellipse_shape.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonOpenLink extends StatelessWidget {
  const ButtonOpenLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.only(
        top: 18,
        bottom: 18,
        right: 25,
        left: 25,
      ),
      color: Colors.redAccent,
      textColor: Colors.white,
      child: const Text(
        "Получит халал займ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: SuperellipseShape(
        borderRadius: BorderRadius.circular(28.0),
      ),
      onPressed: () => launch(SITE_URL),
    );
  }
}
