import 'package:flutter/material.dart';

class HomeSCreen extends StatelessWidget {
  const HomeSCreen({super.key});

  // El BuildContext es todo el arbol de Widget
  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 25);
    // El Scaffold es un Widget que crea toda una pantalla en blanco para nosotros poder añadir estilos. Es como un lienzo para empezar a poner Widget
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 8.0,
      ),
      // backgroundColor: Colors.pink,
      // Cuando trabajamos con Scaffold siempre trabajamos en el body.
      body: const Center(
        child: Column(
          // Propiedades de las columnas.
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Todo lo que esta aca, debe ser un widget
            Text('Numero de Clicks', style: fontSize),
            Text('10', style: fontSize),
          ],
        ),
      ),
    );
  }
}

// Podemos trabajar con el widget Center, pero si no lo retiramos en su lugar y utilizamos las propiedades, mainAxisAligment, 

// crossAxisAlignment: Es relativo al widget que tiene mayor tamaño
