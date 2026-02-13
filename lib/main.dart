import 'package:flutter/material.dart';

void main() => runApp(const AppRuleta());

class AppRuleta extends StatelessWidget {
  const AppRuleta({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RuletaFilaColumnas(),
    );
  }
}

class RuletaFilaColumnas extends StatelessWidget {
  const RuletaFilaColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ruleta Alan",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.help_outline, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.help_outline, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // FILA 1
            Expanded(
              child: Row(
                children: [
                  _crearCuadro(Colors.orange, "Sí", Icons.check),
                  _crearCuadro(Colors.yellow, "No", Icons.close),
                ],
              ),
            ),

            // FILA 2
            Expanded(
              child: Row(
                children: [
                  _crearCuadro(Colors.pink, "Ahora", Icons.hourglass_bottom),
                  _crearCuadro(Colors.green, "Después", Icons.refresh),
                ],
              ),
            ),

            // FILA 3
            Expanded(
              child: Row(
                children: [
                  _crearCuadro(Colors.blue, "Pregunta de nuevo", Icons.question_answer),
                  _crearCuadro(Colors.red, "Quizás", Icons.lightbulb_outline),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearCuadro(Color color, String texto, IconData icono) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, size: 40, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
