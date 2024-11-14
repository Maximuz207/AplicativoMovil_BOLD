import 'package:flutter/material.dart';
import 'splash_screen.dart';
import '../widgets/action_button.dart';  // Asegúrate de que la ruta sea correcta

class ActionScreen extends StatelessWidget {
  final String selectedName;

  ActionScreen({required this.selectedName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 38, 77),
        title: Text('Acciones'), // Barra azul superior con título
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Margen general
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centrar todo verticalmente
            children: [
              Text(selectedName, style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              
              // Primera fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centrado horizontal
                children: [
                  ActionButton(
                    text: 'Entrada',
                    icon: Icons.login,  // Ícono de entrada
                    onPressed: () => _goToSplashScreen(context),
                  ),
                  SizedBox(width: 20), // Espacio entre los botones
                  ActionButton(
                    text: 'Entrada Lonche',
                    icon: Icons.lunch_dining,  // Ícono de lonche
                    onPressed: () => _goToSplashScreen(context),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Segunda fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centrado horizontal
                children: [
                  ActionButton(
                    text: 'Salida Lonche',
                    icon: Icons.lunch_dining,  // Ícono de lonche
                    onPressed: () => _goToSplashScreen(context),
                  ),
                  SizedBox(width: 20), // Espacio entre los botones
                  ActionButton(
                    text: 'Salida',
                    icon: Icons.exit_to_app,  // Ícono de salida
                    onPressed: () => _goToSplashScreen(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50, color: Color.fromARGB(255, 25, 38, 77)), // Barra azul inferior
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
