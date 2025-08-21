import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tarea1/main.dart';

void main() {
  testWidgets('Verificar elementos de la app', (WidgetTester tester) async {
    // Construir nuestra app y ejecutar un frame
    await tester.pumpWidget(const MyApp());

    // Verificar que los textos existen
    expect(find.text('Center'), findsOneWidget);
    expect(find.text('Fin'), findsOneWidget);
    
    // Verificar que el icono de reloj existe
    expect(find.byIcon(Icons.access_time_sharp), findsOneWidget);
    
    // Verificar que existe una imagen
    expect(find.byType(Image), findsOneWidget);
  });
}