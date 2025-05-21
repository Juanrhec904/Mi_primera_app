import 'package:flutter/material.dart';

class sucess extends StatelessWidget {
  const sucess({
    super.key,
  });

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Tareas'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 119, 197, 228),
      ),
      body: Center(child: Text('No hay notas aún....')),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder:
                (context) => Container(
                  padding: const EdgeInsets.all(20),
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.note_add),
                        title: const Text('Crear nota'),
                        onTap: () {
                          Navigator.pop(context);
                          print("Crear nota presionado");
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.save),
                        title: const Text('Guardar nota'),
                        onTap: () {
                          Navigator.pop(context);
                          print("Guardar nota presionado");
                        },
                      ),
                    ],
                  ),
                ),
          );
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}


