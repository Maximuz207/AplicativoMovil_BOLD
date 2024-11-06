import 'package:flutter/material.dart';
import 'pin_screen.dart';

class IdentificationScreen extends StatefulWidget {
  @override
  _IdentificationScreenState createState() => _IdentificationScreenState();
}

class _IdentificationScreenState extends State<IdentificationScreen> {
  String? selectedName;
  List<String> names = ['Juan Hernandez', 'Luis Flores', 'Jose Sanchez', 'Saul Medina'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Identificación'), // Barra azul superior con título
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Margen general
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Identifícate', style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              DropdownButton<String>(
                hint: Text('Selecciona tu nombre'),
                value: selectedName,
                onChanged: (String? value) {
                  setState(() {
                    selectedName = value;
                  });
                },
                items: names.map((String name) {
                  return DropdownMenuItem<String>(
                    value: name,
                    child: Text(name),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: selectedName != null
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PinScreen(selectedName: selectedName!)),
                        );
                      }
                    : null,
                child: Text('Siguiente'),
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