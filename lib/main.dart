import 'package:flutter/material.dart';
import 'package:globalstate/home.dart';
import 'package:globalstate/second.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => const Home(),
        '/Second': (BuildContext context) => const Second(),
      },
      home: const Home(),
    );
  }
}
