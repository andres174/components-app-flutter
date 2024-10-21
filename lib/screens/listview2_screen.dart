import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const [
    'Lunes',
    'Martes',
    'Miercoles',
    'Jueves',
    'Viernes',
    'Sabado',
    'Domingo',
  ];
   
  const ListView2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas Tipo 2'),

      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Día: ${options[index]}'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              
            },
          );
        }, 
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        }, 
        itemCount: options.length,
        
      )
    );
  }
}