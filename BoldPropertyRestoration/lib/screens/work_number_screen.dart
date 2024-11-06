import 'package:flutter/material.dart';
import 'action_screen.dart';

class WorkNumberScreen extends StatelessWidget {
  final String selectedName;

  WorkNumberScreen({required this.selectedName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 25, 59),
        title: Text('Número de Trabajo'), // Barra azul superior con título
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Margen general
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(selectedName, style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                onSubmitted: (value) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ActionScreen(selectedName: selectedName)),
                  );
                },
                decoration: InputDecoration(
                  hintText: 'Número de trabajo',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50, color: Colors.blue), // Barra azul inferior
      ),
    );
  }
}