import 'package:flutter/material.dart';
import 'admin_screen.dart';

class AdminLoginScreen extends StatefulWidget {
  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final String adminPassword = "0000";

  void _verifyPassword() {
    if (_passwordController.text == adminPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AdminScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Contraseña incorrecta')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Login de Administrador'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ingresa la contraseña de administrador',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _verifyPassword,
                child: Text('Ingresar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}