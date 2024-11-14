import 'package:flutter/material.dart';
import 'identification_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 38, 77),  // Barra superior azul
        title: Text('Bienvenido', style: TextStyle(color: Colors.white)), // Título en blanco
      ),
      body: Center(  // Centra todo el contenido
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Margen general
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/BOLD.png'), // Imagen del logo 
              SizedBox(height: 20),
              
              // Botón Iniciar
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IdentificationScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30), // Reducir el padding horizontal
                  textStyle: TextStyle(fontSize: 24), // Aumentar el tamaño de la fuente
                  minimumSize: Size(200, 60), // Establecer un ancho fijo y altura mínima
                  backgroundColor: Color.fromARGB(255, 25, 38, 77), // Color de fondo del botón
                  foregroundColor: Colors.white, // Color del texto del botón (blanco)
                ),
                child: Text('Iniciar'),
              ),
              
              SizedBox(height: 20),
              Text('2024 Bold. All rights reserved.', style: TextStyle(fontSize: 14)) // Aviso de copyright
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,  // Cambia el fondo del Scaffold a blanco
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 25, 38, 77),  // Barra inferior azul
        child: Container(height: 50),  // Barra inferior sin color si prefieres mantenerlo blanco
      ),
    );
  }
}
