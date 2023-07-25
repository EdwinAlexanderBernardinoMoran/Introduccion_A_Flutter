import 'package:flutter/material.dart';

// El StatelessWidget no puede manejar estados para ello necesitamos un gestor de estados.
class HomeSCreen extends StatelessWidget {
  const HomeSCreen({super.key});

  // El BuildContext es todo el arbol de Widget
  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 25);

    int counter = 10;
    // El Scaffold es un Widget que crea toda una pantalla en blanco para nosotros poder añadir estilos. Es como un lienzo para empezar a poner Widget
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 8.0,
      ),
      // backgroundColor: Colors.pink,
      // Cuando trabajamos con Scaffold siempre trabajamos en el body.
      body: Center(
        child: Column(
          // Propiedades de las columnas.
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Todo lo que esta aca, debe ser un widget
            const Text('Numero de Clicks', style: fontSize),
            Text('$counter', style: fontSize),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        // Icons es un Widget personalizado para mostrar iconos
        child: const Icon(Icons.add),
        onPressed: () {
          print('Hola mundo');
        },
      ),
    );
  }
}

// Podemos trabajar con el widget Center, pero si no lo retiramos en su lugar y utilizamos las propiedades, mainAxisAligment, 

// crossAxisAlignment: Es relativo al widget que tiene mayor tamaño
