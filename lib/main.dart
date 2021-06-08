import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halalcredit/functions.dart';
import 'package:superellipse_shape/superellipse_shape.dart';
import 'package:url_launcher/url_launcher.dart';

import 'config.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.ubuntuTextTheme(),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentMoney = 45000;
  double _month = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Халал Кредит | Калкульятор"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Text(
                  'Получит займ без процентов, просрочек',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Slider(
              value: _currentMoney,
              min: 45000,
              max: 2000000,
              divisions: 500,
              label: _currentMoney.toInt().toString(),
              onChanged: (value) => setState(() => _currentMoney = value),
            ),
            Text(
              _currentMoney.toInt().toString() + " тг",
              style:
                  const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _month,
              min: 1,
              max: 12,
              divisions: 12,
              label: _month.toInt().toString(),
              onChanged: (value) => setState(() => _month = value),
            ),
            Text(
              _month.toInt().toString() + " месяц",
              style:
                  const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50.0),
            Text(
              "В месяц платите: " +
                  getMonthPay(_currentMoney.toInt(), _month.toInt())
                      .toString() +
                  " тг",
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 30.0),
            Text(
              "Первоначальный взнос: " +
                  getFirstContribution(_currentMoney.toInt()).toString() +
                  " тг",
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 60.0),
            MaterialButton(
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
              shape:
                  SuperellipseShape(borderRadius: BorderRadius.circular(28.0)),
              onPressed: () => launch(SITE_URL),
            )
          ],
        ),
      ),
    );
  }
}
