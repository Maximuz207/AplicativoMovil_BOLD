import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Importar para inicializar Firebase
import 'firebase_options.dart'; // Importar el archivo generado por Firebase CLI
import 'screens/splash_screen.dart';

void main() async {
  // Asegúrate de que todo se cargue correctamente antes de correr la app.
  WidgetsFlutterBinding.ensureInitialized();
  // Inicializar Firebase con las opciones correspondientes de cada plataforma.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Usar las opciones generadas
  );
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorkTrack',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema azul
      ),
      home: SplashScreen(),
    );
  }
}
