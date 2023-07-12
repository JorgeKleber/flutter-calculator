import 'package:calculadora/pages/calculatorPage.dart';
import 'package:calculadora/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: WelcomePage(), routes: <String, WidgetBuilder>{
      'calculator_page': (BuildContext context) => CalculatorPage(),
    }),
  );
}
