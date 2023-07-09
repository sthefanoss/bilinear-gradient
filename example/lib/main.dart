import 'package:bilinear_gradient/bilinear_gradient.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(theme: ThemeData.dark(useMaterial3: true), home: const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bilinear Gradient')),
      body: BilinearGradientDecorator(
        topLeftColor: Color(0xFFF7F700),
        topRightColor: Color(0xFF00F700),
        bottomLeftColor: Color(0xFF7675C3),
        bottomRightColor: Color(0xFFF70075),
        child: Center(child: SizedBox()),
      ),
    );
  }
}
