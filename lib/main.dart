// Todos los widgets vienen de el siguiente paquete
import 'package:flutter/material.dart';
import 'package:primer_app/presentation/screens/counter/counter_funtions_screen.dart';
// import 'package:primer_app/presentation/screens/counter/counter_screen.dart';
void main(){
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //Para poder modificar el material3 hacemos esto
        useMaterial3: true,
        //Para cambiar el color de los scheme
        colorSchemeSeed: Colors.lightBlueAccent
      ),
      home: const CounterFunctionsScreen()
    );
  }
}
