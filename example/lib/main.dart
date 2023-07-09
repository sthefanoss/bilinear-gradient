import 'package:bilinear_gradient/bilinear_gradient.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        home: const HomePage(),
        title: 'Bilinear Gradient Example',
      );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const topLeftColor = Color(0xFFF7F700);
  static const topRightColor = Color(0xFF00F700);
  static const bottomLeftColor = Color(0xFF7675C3);
  static const bottomRightColor = Color(0xFFF70075);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bilinear Gradient')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            widthFactor: 0.1,
            heightFactor: 0.1,
            alignment: Alignment.topLeft,
            child: Container(
              color: topLeftColor,
              alignment: Alignment.center,
              child: DecoratedText('Yellow'),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.1,
            heightFactor: 0.1,
            alignment: Alignment.topRight,
            child: Container(
              color: topRightColor,
              alignment: Alignment.center,
              child: DecoratedText('Green'),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.1,
            heightFactor: 0.1,
            alignment: Alignment.bottomLeft,
            child: Container(
              color: bottomLeftColor,
              alignment: Alignment.center,
              child: DecoratedText('Blue'),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.1,
            heightFactor: 0.1,
            alignment: Alignment.bottomRight,
            child: Container(
              color: bottomRightColor,
              alignment: Alignment.center,
              child: DecoratedText('Red'),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 0.1,
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                topLeftColor,
                topRightColor,
              ])),
              child: DecoratedText('Linear Gradient'),
              alignment: Alignment.center,
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 0.1,
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                bottomLeftColor,
                bottomRightColor,
              ])),
              child: DecoratedText('Linear Gradient'),
              alignment: Alignment.center,
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.1,
            heightFactor: 0.8,
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  topLeftColor,
                  bottomLeftColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: DecoratedText('Linear Gradient'),
              alignment: Alignment.center,
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.1,
            heightFactor: 0.8,
            alignment: Alignment.centerRight,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  topRightColor,
                  bottomRightColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: DecoratedText('Linear Gradient'),
              alignment: Alignment.center,
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 0.8,
            alignment: Alignment.center,
            child: BilinearGradientDecorator(
              topLeftColor: topLeftColor,
              topRightColor: topRightColor,
              bottomLeftColor: bottomLeftColor,
              bottomRightColor: bottomRightColor,
              child: Center(child: DecoratedText('Bilinear Gradient')),
            ),
          ),
        ],
      ),
    );
  }
}

class DecoratedText extends StatelessWidget {
  const DecoratedText(this.colorName, {super.key});

  final String colorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Text(colorName),
    );
  }
}
