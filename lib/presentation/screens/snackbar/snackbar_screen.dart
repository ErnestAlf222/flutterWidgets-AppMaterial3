import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  
  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});



  void showCustomSnackBar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

     final snackBar = SnackBar(content: const Text('Hola mundos'),
     action: SnackBarAction(label: 'OK', onPressed: (){}),
     duration: const Duration(seconds: 2),
     );
     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context){
    showDialog(
      // (builder) => Se construye en tiempo de ejecución
      context: context,
      // (barrierDismissible) => Obligar a la persona que debe de seleccionar una de las dos opciones 
      barrierDismissible: false, 
      builder: (context) =>  AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Laborum do dolor aliqua magna.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar'),),
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar'),),

        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars y diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                   const Text('Cupidatat irure qui qui nisi ad mollit nostrud ex dolor officia.')
                  ]
                );
              }, 
              child: const Text('Licencias usadas'),
              ),
            FilledButton(
              onPressed: () => openDialog(context),

              child: const Text('Mostrar diálogo'),
              ),

          ]
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context)
        ),

    );
  }
}