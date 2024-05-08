import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firs_name'        : 'Carlos',
      'last_name'        : 'Henriquez',
      'email'            : 'carlos@gmail.com',
      'password'         : '123456',
      'role'             : 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'firs_name', formValues: formValues, ),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Password', hintText: 'Password del usuario', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser'),),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer'),),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer'),),
                  ], 
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),

                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: const Text('Guardar'),),
                  ),
                  onPressed: (){

                    FocusScope.of(context).requestFocus(FocusNode());//Minimizamos el teclado

                    if(!myFormKey.currentState!.validate()){
                      print("Formulario no valido");
                      return;
                    }
                      

                    //TODO imprimir los valores del formulario
                    print(formValues);
                  }
                ), 
              ],
            ),
          ),
        ),
        
      )

    );
  }
}

