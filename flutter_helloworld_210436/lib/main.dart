import 'package:flutter/material.dart';
import 'package:flutter_helloworld_210436/presentation/screens/counter/counter_functions_screen.dart';
//import 'package:helloworld_app_210659/presentation/screens/counter_screen.dart';
// ignore: unused_import
import 'package:flutter_helloworld_210436/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.red),
        //home: const CounterScreen());
        home: const CounterfunctionsScreen());
  }
}
