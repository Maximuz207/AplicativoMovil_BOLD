import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 25, 38, 77),
        title: Text('Panel de Administrador'),
      ),
      drawer: Sidebar(), // Barra lateral con las opciones
      body: Center(
        child: Text(
          'Bienvenido al Panel de Administrador',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}