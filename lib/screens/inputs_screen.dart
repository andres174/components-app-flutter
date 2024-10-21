import 'package:components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    // ! Primer uso de las Key
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Andres',
      'last_name': 'Zambrano',
      'email': 'andres@gmail.com',
      'password': '12345678',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y forms"),
      ),
      body: SingleChildScrollView(
        /* controller: , */
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            onChanged: () {
              
            },
            child: Column(
              children: [
                const SizedBox(height: 30,),
                CustomInputField1(labelText: 'Nombre', hintText: 'Escriba su nombre', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField1(labelText: 'Apellido', hintText: 'Escriba su apellido', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField1(labelText: 'Correo', hintText: 'Escriba su correo', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField1(labelText: 'Contraseña', hintText: 'Escriba su contraseña', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),
                DropdownButtonFormField(
                  hint: const Text('Selecciona un rol...'),
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'User',
                      child: Text('User'),
                    ),
                    DropdownMenuItem(
                      value: 'Manager',
                      child: Text('Manager'),
                    ),
                    DropdownMenuItem(
                      value: 'Senior Dev',
                      child: Text('Senior Dev'),
                    ),
                    DropdownMenuItem(
                      value: 'Junior Dev',
                      child: Text('Junior Dev'),
                    ),
                  ], 
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  }
                ),

                const SizedBox(height: 30,),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar')
                      ),
                    ),
                  onPressed: (){
                    // * imprimir valores del form

                    if (!myFormKey.currentState!.validate()){
                      print('Formulario no válido');
                      return;
                    }
                    print(formValues);
                  }, 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

