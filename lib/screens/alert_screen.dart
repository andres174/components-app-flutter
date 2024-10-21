import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});
  
  void displayDialogAndroid(context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
          elevation: 10,
          title: const Text('Alerta titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contenido de la alerta'),
              SizedBox(height: 15,),
              FlutterLogo(size: 20,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: const Text('Cancelar') 
            )
          ],
        );
      }
    );
  }

  void displayDialogIOS(context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Alerta titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contenido de la alerta'),
              SizedBox(height: 15,),
              FlutterLogo(size: 20,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: const Text('Cancelar') 
            )
          ]
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //no funciona emulando en web
            Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context);
            //displayDialogAndroid(context);
            //displayDialogIOS(context);
          }, 
          child: const Text('Mostrar alerta')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(Icons.close)
      ),
    );
  }
}