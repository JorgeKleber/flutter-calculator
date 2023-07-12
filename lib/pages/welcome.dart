import 'package:calculadora/widgets/navigatedButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  void StartCalc(BuildContext context)
  {
    Navigator.pushNamed(context, 'welcome_page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Olá bem-vindo ao Flutter!!!'),
              NavigatedButton('Start','calculator_page')
            ],
          ),
      ),
    );
  }
}
