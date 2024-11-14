import 'package:flutter/material.dart';
import 'pin_screen.dart';
import 'admin_login_screen.dart';

class IdentificationScreen extends StatefulWidget {
  @override
  _IdentificationScreenState createState() => _IdentificationScreenState();
}

class _IdentificationScreenState extends State<IdentificationScreen> {
  String? selectedName;
  List<String> names = ['Juan Hernandez', 'Luis Flores', 'Jose Sanchez', 'Saul Medina', 'Administrador'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 25, 38, 77),
        title: Text('Identificación'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selecciona tu nombre',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
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
                onPressed: () {
                  if (selectedName == 'Administrador') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminLoginScreen()),
                    );
                  } else if (selectedName != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PinScreen(selectedName: selectedName!)),
                    );
                  }
                },
                child: Text('Siguiente'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50, color:  Color.fromARGB(255, 25, 38, 77)),
      ),
    );
  }
}