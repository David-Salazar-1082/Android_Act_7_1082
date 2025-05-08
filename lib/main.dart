import 'package:flutter/material.dart';
import 'package:uii_android_act_7_flutter_mapp_1082/pagina_inicial.dart';
import 'package:uii_android_act_7_flutter_mapp_1082/pagina_dos.dart';
import 'package:uii_android_act_7_flutter_mapp_1082/pagina_tres.dart';
import 'package:uii_android_act_7_flutter_mapp_1082/pagina_cuatro.dart';
import 'package:uii_android_act_7_flutter_mapp_1082/pagina_cinco.dart';
import 'package:uii_android_act_7_flutter_mapp_1082/pagina_seis.dart';
import 'package:uii_android_act_7_flutter_mapp_1082/pagina_siete.dart';

void main() => runApp(MisWidgets());

class MisWidgets extends StatelessWidget {
  const MisWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UII Android Act 7 Flutter Mapp',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaInicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
      },
    );
  }
}
