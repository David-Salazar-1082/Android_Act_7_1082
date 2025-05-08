//! CupertinoSlidingSegmentedControl

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _Widget065State();
}

class _Widget065State extends State<PantallaSiete> {
  int _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Pantalla 7',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Acción de notificaciones
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Acción del menú
          },
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoSlidingSegmentedControl<int>(
            children: const {
              0: Text('Text 0'),
              1: Text('Text 1'),
              2: Text('Text 2'),
            },
            groupValue: _sliding,
            onValueChanged: (int? newValue) {
              setState(() {
                _sliding = newValue ?? 0;
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
