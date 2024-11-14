import 'package:flutter/material.dart';
import '../screens/splash_screen.dart'; 

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // DrawerHeader modificado para mostrar el logo
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 25, 38, 77),
            ),
            child: Center(
              child: Image.asset(
                'assets/BOLD.png', // Asegúrate de que esta ruta sea correcta para tu logo
                fit: BoxFit.contain, // Ajusta la imagen para que no se distorsione
                width: 100,  // Puedes ajustar el tamaño de la imagen según lo necesites
                height: 100, // Asegúrate de que la imagen tenga un tamaño adecuado
              ),
            ),
          ),
          
          // Elementos del menú
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Identificar trabajadores'),
            onTap: () {
              // Acción al seleccionar "Identificar trabajadores"
            },
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Identificar trabajos'),
            onTap: () {
              // Acción al seleccionar "Identificar trabajos"
            },
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Identificar horas trabajadas'),
            onTap: () {
              // Acción al seleccionar "Identificar horas trabajadas"
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_chart),
            title: Text('Reportes'),
            onTap: () {
              // Acción al seleccionar "Reportes"
            },
          ),
          
          Spacer(),  // Esto empuja el botón hacia la parte inferior
          
          // Botón "Salir" en la parte inferior
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Color rojo para el botón de salir
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              ),
              onPressed: () {
                // Redirige a la página principal (SplashScreen) y limpia la pila de navegación
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                  (Route<dynamic> route) => false,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: const Color.fromARGB(255, 63, 63, 63)),
                  SizedBox(width: 8),
                  Text('Salir', style: TextStyle(color: const Color.fromARGB(255, 63, 63, 63))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
