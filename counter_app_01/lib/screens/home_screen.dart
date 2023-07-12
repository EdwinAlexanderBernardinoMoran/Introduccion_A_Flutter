import 'package:flutter/material.dart';

class HomeSCreen extends StatelessWidget {
  const HomeSCreen({super.key});

  // El BuildContext es todo el arbol de Widget
  @override
  Widget build(BuildContext context) {
    // El Scaffold es un Widget que crea toda una pantalla en blanco para nosotros poder añadir estilos. Es como un lienzo para empezar a poner Widget
    return const Scaffold(
      // backgroundColor: Colors.pink,
      body: Center(child: Text('Hola Desde HomeScreen')),
    );
  }
}
