import 'package:flutter/material.dart';

class Crear extends StatelessWidget {
  const Crear({
    super.key,
  });

 @override
  Widget build(BuildContext context) {
    final TextEditingController tituloController = TextEditingController();
    final TextEditingController contenidoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(    
        title: const Text('Nota nueva'),
        backgroundColor: const Color.fromARGB(255, 119, 197, 228),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/11443/11443537.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              const Color.fromARGB(255, 230, 226, 226).withOpacity(0.3),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Campo de título
              TextField(
                controller: tituloController,
                decoration: const InputDecoration(
                  labelText: 'Título',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: contenidoController,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Escriba su texto',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              // Botón guardar
              ElevatedButton(
                onPressed: () {
                  final titulo = tituloController.text;
                  final contenido = contenidoController.text;
                  print('Título: $titulo');
                  print('Contenido: $contenido');
                },
                child: const Text('Guardar Nota'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
