import 'package:flutter/material.dart';

class CounterfunctionsScreen extends StatefulWidget {
  const CounterfunctionsScreen({super.key});

  @override
  State<CounterfunctionsScreen> createState() => _CounterfunctionsScreenState();
}

class _CounterfunctionsScreenState extends State<CounterfunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador-functions_210436'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: (() {
              //cuando se le de refresh se reinicia el contador
              setState(() {
                clickCounter = 0;
              });
            }),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            const Text('Clicks', style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
  mainAxisAlignment: MainAxisAlignment.end, // Posición al final de la pantalla
  children: [
    SizedBox(height: 10), // Espacio superior (opcional)
    
    FloatingActionButton(
      onPressed: () {
        clickCounter++; // Incrementa el contador
        setState(() {});
      },
      backgroundColor: Colors.green, // Color de fondo verde
      child: const Icon(Icons.plus_one), // Icono de incrementar
    ),

    SizedBox(height: 16), // Espacio entre botones

    FloatingActionButton(
      onPressed: () {
        clickCounter--; // Decrementa el contador
        setState(() {});
      },
      backgroundColor: const Color.fromARGB(255, 221, 26, 12), // Color de fondo rojo
      child: const Icon(Icons.remove), // Icono de decrementar
    ),

    SizedBox(height: 16), // Espacio entre botones

    FloatingActionButton(
      onPressed: () {
        clickCounter = 0; // Resetea el contador a 0
        setState(() {});
      },
      backgroundColor: const Color.fromARGB(255, 110, 174, 226), // Color de fondo azul
      child: const Icon(Icons.refresh_rounded), // Icono de recargar
    ),

    SizedBox(height: 10), // Espacio inferior (opcional)
  ],
)

    );
  }
}
