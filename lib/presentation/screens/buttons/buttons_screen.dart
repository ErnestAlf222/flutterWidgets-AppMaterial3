import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
  static const String name = 'buttons_screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){
          //? Salir de la pantalla
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return  SizedBox(
      // Llegar hasta donde llegue el padre
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Elevated button')),
           const ElevatedButton(onPressed: null, child:  Text('Elevated Disabled')),
           ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.access_alarm_rounded), label: const Text('Elevated Icon')),
           FilledButton(onPressed: (){}, child: const Text('Fill')),
           FilledButton.icon(onPressed: (){}, icon:const Icon(Icons.abc), label: const Text('Filled Icon'),),
           OutlinedButton(onPressed: (){}, child: const Text('Outlined')),
           OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.zoom_in), label: const Text('Outlined Icon'),),
           TextButton(onPressed: (){}, child: const Text('Text')),

          //  Todo Custom Button
          const CustomButton(),

          IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded)),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.app_registration_rounded), 
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
              iconColor: const MaterialStatePropertyAll(Colors.white) )),
          ],
        ),
      ),
    );
  }
}


// Button personalizado
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {         
          },
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}