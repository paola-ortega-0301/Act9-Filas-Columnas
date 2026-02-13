import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eventos Poplas',
      home: const EventosScreen(),
    );
  }
}

class EventosScreen extends StatelessWidget {
  const EventosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Eventos Poplas',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        // Iconos de pastel y fiesta en color blanco
        actions: const [
          Icon(Icons.cake, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.celebration, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Margen externo de la pantalla
        child: Column(
          children: [
            // Fila 1: Naranja y Amarillo
            Expanded(
              child: Row(
                children: [
                  _crearCuadro('Naranja', Colors.orange, Icons.access_alarm_outlined),
                  const SizedBox(width: 15), // Separación entre contenedores
                  _crearCuadro('Amarillo', Colors.yellow, Icons.star, textoNegro: true),
                ],
              ),
            ),
            const SizedBox(height: 15), // Separación entre filas

            // Fila 2: Magenta y Verde
            Expanded(
              child: Row(
                children: [
                  _crearCuadro('Magenta', Colors.purple, Icons.air),
                  const SizedBox(width: 15),
                  _crearCuadro('Verde', Colors.green, Icons.eco),
                ],
              ),
            ),
            const SizedBox(height: 15),

            // Fila 3: Azul y Rojo
            Expanded(
              child: Row(
                children: [
                  _crearCuadro('Azul', Colors.blue, Icons.battery_0_bar),
                  const SizedBox(width: 15),
                  _crearCuadro('Rojo', Colors.red, Icons.local_fire_department),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función para evitar repetir código: crea cuadros redondeados con texto
  Widget _crearCuadro(String nombre, Color color, IconData icono, {bool textoNegro = false}) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25), // Bordes redondeados
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4), // Sombra sutil
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, color: textoNegro ? Colors.black : Colors.white, size: 40),
            const SizedBox(height: 10),
            Text(
              nombre,
              style: TextStyle(
                color: textoNegro ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}