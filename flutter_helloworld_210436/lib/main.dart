import 'package:flutter/material.dart';

void main() {
  print('Hola Mundo');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hola Mundo desde flutter'),
    );
    throw UnimplementedError();
  }
}
