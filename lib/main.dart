import 'package:flutter/material.dart';

void main() => runApp(const AppAbarrotes());

class AppAbarrotes extends StatelessWidget {
  const AppAbarrotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosEmpleados(),
    );
  }
} // fin clase AppAbarrotes

class LosEmpleados extends StatelessWidget {
  const LosEmpleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título del AppBar
        title: const Text(
          'Abarrotes',
          style: TextStyle(color: Colors.white), // Texto en color blanco
        ),
        
        // Color de fondo guinda moderno (Deep Carmine/Wine)
        backgroundColor: const Color(0xFF800020),
        
        // Icono a la izquierda (tienda)
        leading: const Icon(
          Icons.store,
          color: Colors.white,
        ),
        
        // Iconos a la derecha (herramienta, emergencia, cámara)
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Colors.white),
            onPressed: () {
              // Acción para herramienta
            },
          ),
          IconButton(
            icon: const Icon(Icons.emergency, color: Colors.white),
            onPressed: () {
              // Acción para emergencia
            },
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {
              // Acción para cámara
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Ahora pasamos 3 parámetros: Título, Subtítulo y la URL de la imagen
              _crearTarjeta(
                'David Macias',
                'Gerente de tienda',
                'https://raw.githubusercontent.com/DavidMC28/imagenes-para-flutter-6to-I-11-feb-2026/refs/heads/main/empleado1.png',
              ),
              _crearTarjeta(
                'Maria Rodriguez',
                'Cajera',
                'https://raw.githubusercontent.com/DavidMC28/imagenes-para-flutter-6to-I-11-feb-2026/refs/heads/main/empleado2.png',
              ),
              _crearTarjeta(
                'Pedro Ramirez',
                'Personal de limpieza',
                'https://raw.githubusercontent.com/DavidMC28/imagenes-para-flutter-6to-I-11-feb-2026/refs/heads/main/empleado3.png',
              ),
              _crearTarjeta(
                'Citlalli Gomez',
                'Gerente de RH',
                'https://picsum.photos/id/75/200',
              ),
            ],
          ),
        ),
      ),
    ); // fin de scaffold
  }

  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: Colors.green[100], // Fondo verde claro
      elevation: 5,             // Sombreado
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        // Ahora la imagen es dinámica gracias al parámetro urlImagen
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.black87),
        ),
        trailing: const Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
    );
  }
}
