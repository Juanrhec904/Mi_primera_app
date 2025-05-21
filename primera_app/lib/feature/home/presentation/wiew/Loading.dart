import 'package:flutter/material.dart';

class Loandig extends StatelessWidget {
  const Loandig({
    super.key,
  });

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/11443/11443537.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              const Color.fromARGB(255, 134, 132, 132).withOpacity(0.3),
              BlendMode.darken,
            ),
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text(
                'Cargando....',
                style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
