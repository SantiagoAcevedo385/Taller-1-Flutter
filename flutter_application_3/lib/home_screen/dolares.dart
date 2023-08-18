import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';



class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  final numero1Controller=TextEditingController();
  final numero2Controller=TextEditingController();
  final resultadoController=TextEditingController();
  final euro = 0.91;
  final dolar = 4040;
  num resultadoDolar=0;
  num resultadoEuro = 0;
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Calculadora de dolares', style: TextStyle(color: Color.fromARGB(255, 255, 252, 252)))
      ),
      body: Column( 
        children:[TextField(
          controller:numero1Controller,
          obscureText: false,
          decoration: const InputDecoration(
            border:OutlineInputBorder(),
            labelText: 'Escriba la cantidad de Dolares que desea cambiar a Pesos Colombianos COP y Euros',
          ),
        ),TextField(
          controller:numero2Controller,
          obscureText: false,
          readOnly: true,
          decoration: const InputDecoration(
            border:OutlineInputBorder(),
            labelText: 'Dolares a Euros: ',
          ),
        ),
        TextField(
          controller:resultadoController,
          obscureText: false,
          readOnly: true,
          decoration: const InputDecoration(
            border:OutlineInputBorder(),
            labelText: 'Dolares a COP: ',
          ),
        ),
        Row(
          children: [
            IconButton(
          icon: const Icon(Icons.calculate),
          onPressed: (){
            resultadoDolar = double.parse(numero1Controller.text) * dolar;
            resultadoEuro = double.parse(numero1Controller.text) * euro;
            numero2Controller.text = resultadoEuro.toString();
            resultadoController.text=resultadoDolar.toString();
          },
        ),
          ],
        )
        ]
      )
    );
  }
}