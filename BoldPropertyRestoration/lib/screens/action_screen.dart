import 'package:flutter/material.dart';
import 'splash_screen.dart';
import '../widgets/action_button.dart'; // Importamos el botón personalizado

class ActionScreen extends StatelessWidget {
  final String selectedName;

  ActionScreen({required this.selectedName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Acciones'), // Barra azul superior con título
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Margen general
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(selectedName, style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(text: 'Entrada', onPressed: () => _goToSplashScreen(context)),
                  ActionButton(text: 'Entrada Lonche', onPressed: () => _goToSplashScreen(context)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(text: 'Salida Lonche', onPressed: () => _goToSplashScreen(context)),
                  ActionButton(text: 'Salida', onPressed: () => _goToSplashScreen(context)),
                ],
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

  void _goToSplashScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SplashScreen()),
    );
  }
}