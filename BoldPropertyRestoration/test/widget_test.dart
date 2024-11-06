// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:BoldPropertyRestoration/main.dart';

void main() {
  testWidgets('Pantalla de inicio muestra el botón "Iniciar"', (WidgetTester tester) async {
    // Construir la aplicación
    await tester.pumpWidget(MyApp());

    // Verificar que el botón "Iniciar" esté presente
    expect(find.text('Iniciar'), findsOneWidget);
  });

  testWidgets('Navegar a la pantalla de identificación', (WidgetTester tester) async {
    // Construir la aplicación
    await tester.pumpWidget(MyApp());

    // Presionar el botón "Iniciar"
    await tester.tap(find.text('Iniciar'));
    await tester.pumpAndSettle();

    // Verificar que se navega a la pantalla de identificación
    expect(find.text('Identifícate'), findsOneWidget);
  });
}