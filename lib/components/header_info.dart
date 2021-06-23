import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: const Text(
          'Получит займ без процентов, просрочек',
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
