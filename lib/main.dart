import 'package:flutter/material.dart';
import 'package:rupeeconverter/rupeeconverterhomepage.dart';

void main() {
  runApp(RupeeConverterApp());
}

class RupeeConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rupee Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RupeeConverterHomePage(),
    );
  }
}
