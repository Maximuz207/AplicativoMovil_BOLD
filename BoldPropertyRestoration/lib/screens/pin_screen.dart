import 'package:flutter/material.dart';
import 'work_number_screen.dart';

class PinScreen extends StatefulWidget {
  final String selectedName;

  PinScreen({required this.selectedName});

  @override
  _PinScreenState createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  String pin = '';

  void onNumberPressed(String number) {
    if (pin.length < 4) {
      setState(() {
        pin += number;
      });
    }
    if (pin.length == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WorkNumberScreen(selectedName: widget.selectedName)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Ingresa tu PIN'), // Barra azul superior con título
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Margen general
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.selectedName, style: TextStyle(fontSize: 24)), // Muestra el nombre
              SizedBox(height: 20),
              Text('Ingresa tu pin', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [for (int i = 1; i <= 9; i++) _buildPinButton(i.toString())],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    pin = '';
                  });
                },
                child: Text('Borrar'),
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

  Widget _buildPinButton(String number) {
    return Padding(
      padding: const EdgeInsets.all(4.0), // Margen entre botones
      child: ElevatedButton(
        onPressed: () => onNumberPressed(number),
        child: Text(number),
      ),
    );
  }
}