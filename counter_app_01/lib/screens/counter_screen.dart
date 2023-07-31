import 'package:flutter/material.dart';

// El StatelessWidget no puede manejar estados para ello necesitamos un gestor de estados.
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void home() {
    counter = 0;
    setState(() {});
  }

  // El BuildContext es todo el arbol de Widget
  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 25);

    // El Scaffold es un Widget que crea toda una pantalla en blanco para nosotros poder añadir estilos. Es como un lienzo para empezar a poner Widget
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
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

      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        homeFn: home,
      ),
    );
  }
}

// NullSettings, advierte cuando algo es nulo.

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function homeFn;

  const CustomFloatingActions({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.homeFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // El mainAxisAligment va de izquierda a derecha.
      // El crossAxisAlignment va de arriva a abajo.
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
          // Icons es un Widget personalizado para mostrar iconos
          child: const Icon(Icons.add),
          // onPressed: () {
          //   counter++;

          //   // Metodo setState solo puede ser llamado en StatfullWidget, esto notifica que hubo un cambio en el estado, y redibuja el widget
          //   setState(() {});
          // },
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () => homeFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.minimize),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}

// Podemos trabajar con el widget Center, pero si no lo retiramos en su lugar y utilizamos las propiedades, mainAxisAligment, 

// crossAxisAlignment: Es relativo al widget que tiene mayor tamaño
