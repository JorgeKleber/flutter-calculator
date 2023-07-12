import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  late int valor1;
  late int valor2;
  int result = 0;

  void Somar() {
    setState(() {
      result = valor1 + valor2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  'Esta é uma calculadora simples, '
                  'informe dois numeros e selecione a operação.',
                  textAlign: TextAlign.center),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Informe o primeiro valor.'),
                onChanged: (text) {
                  valor1 = int.parse(text);
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Informe o Segundo valor.'),
                onChanged: (text) {
                  valor2 = int.parse(text);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () => {Somar()}, child: Text('SOMAR')),
              SizedBox(height: 80),
              Text(
                result.toString(),
                style: TextStyle(fontSize: 40),
              )
            ],
          ),
        ),
      ),
    );
  }
}
