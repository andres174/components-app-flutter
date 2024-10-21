import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const [
    'Lunes',
    'Martes',
    'Miercoles',
    'Jueves',
    'Viernes',
    'Sabado',
    'Domingo',
  ];
   
  const ListView1Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas Tipo 1'),
      ),
      body: ListView(
        children: [

          ...options.map(
            (day) => 
            ListTile(
            leading: const Icon(Icons.add),
            trailing: const Icon(Icons.arrow_forward_ios),
            title: Text(day),
          )
          )

          /* ListTile(
            leading: Icon(Icons.add),
            title: Text("Hola"),
          ), */
        ],
      )
    );
  }
}