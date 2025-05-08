//! CupertinoSlidingSegmentedControl

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _Widget065State();
}

class _Widget065State extends State<PantallaSiete> {
  int _sliding = 0; // Utilizamos un valor de tipo entero no nulo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla 7',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoSlidingSegmentedControl<int>(
            children: {
              0: const Text('Text 0'),
              1: const Text('Text 1'),
              2: const Text('Text 2'),
            },
            groupValue: _sliding,
            onValueChanged: (int? newValue) {
              setState(() {
                _sliding = newValue ?? 0; // En caso de null, default a 0
              });
            },
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '/pantalla1');
              },
              child: const Text('Pantalla 1'),
            ),
          ),
        ],
      ),
    );
  }
}
