import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final IconData icon;  // Parámetro para el ícono
  final VoidCallback onPressed;

  ActionButton({required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 30),  // Tamaño del ícono
      label: Text(
        text,
        style: TextStyle(fontSize: 18),  // Tamaño del texto
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),  // Ajustar el padding
        minimumSize: Size(180, 60),  // Tamaño mínimo del botón
        backgroundColor: Color.fromARGB(255, 25, 38, 77),  // Color de fondo
      ),
    );
  }
}
