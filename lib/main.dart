import 'package:flutter/animation.dart';

import './transaction.dart';
import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final List<Transaction> transactions = [
    Transaction(id: 'T1',
      title: 'new shoes',
      amount: 69.99,
      date: DateTime.now()
    ),
    Transaction(id: 'T2',
        title: 'new coffee mug',
        amount: 29.99,
        date: DateTime.now()
    )
  ];


  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;



  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(child: Text('Injuries'))),
              color: Colors.deepPurpleAccent,
              elevation: 15,
            ),
            Column(children: transactions.map((){
              return Card(child: Text(tx.title),);
            }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
