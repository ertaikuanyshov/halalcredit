import 'package:flutter/material.dart';
import 'package:halalcredit/functions.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

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
        title: const Text("HalalCredit"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: const Text(
              'Получит займ без процентов, просрочек',
              style: const TextStyle(fontSize: 20.0),
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
              onChanged: (value) => setState(() => _currentMoney = value)),
          Text(
            _currentMoney.toInt().toString() + " тг",
            style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          Slider(
              value: _month,
              min: 1,
              max: 12,
              divisions: 12,
              label: _month.toInt().toString(),
              onChanged: (value) => setState(() => _month = value)),
          Text(
            _month.toInt().toString() + " месяц",
            style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "В месяц платите: " +
                getMonthPay(_currentMoney.toInt(), _month.toInt()).toString() +
                " тг",
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 60.0,
          ),
          FlatButton(
            padding: const EdgeInsets.all(18.0),
            color: Colors.redAccent,
            textColor: Colors.white,
            child: const Text("Получит халал займ"),
            onPressed: () => launch(
              "https://cabinet.halalcredit.kz/ru/order/create?ref_id=48058804",
            ),
          )
        ],
      ),
    );
  }
}
