import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode; 
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
           IconButton(
            onPressed: (){
              // ref.read(isDarkModeProvider.notifier).update((state) => !state);
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
             
            }, 
            icon:  Icon( isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
          )

        ],
      ),
      body: const _ThemeChangerView(), 
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {

  final List<Color> colors =ref.watch(colorListProvider);
  final int changeColor =  ref.watch(themeNotifierProvider).selectedColor;
  // final int changeColor = ref.watch(selectedColorProvider);
    
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: changeColor, 
          onChanged: (value){
            // Todo Notificar el cambio
            // ref.read(selectedColorProvider.notifier).state = index;
            ref.watch(themeNotifierProvider.notifier).changeColorIndex(index);

          }
        );
     }, 
    );
  }
}