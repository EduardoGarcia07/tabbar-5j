import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pestaña tab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
} //miapp

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //fin de la clase MyHomePage+

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.orange), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.account_circle)),
              Tab(icon: Icon(Icons.adobe_outlined)),
              Tab(icon: Icon(Icons.access_alarm)),
              Tab(icon: Icon(Icons.account_balance)),
            ],
          ),
          title: Text('Tabs Garcia hernandez'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.account_circle, size: 350),
            Icon(Icons.adobe_outlined, size: 350),
            Icon(Icons.access_alarm, size: 350),
            Icon(Icons.account_balance, size: 350),
          ],
        ),
      ),
    );
  }
} //_MyHomePageState fin
