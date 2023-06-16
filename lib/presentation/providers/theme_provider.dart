import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Estado => isDarkMode = boolean
final isDarkModeProvider = StateProvider((ref) => false);

// Lisatado de colores inmutables
final colorListProvider = StateProvider((ref) => colorList);

// Un simple entero
final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifer, AppTheme>(
  (ref) => ThemeNotifer(),
  );


// Controller o notifiers
class ThemeNotifer extends StateNotifier<AppTheme> {

  // State estado de appTheme
  ThemeNotifer():super(AppTheme());


  void toggleDarkMode(){
    state = state.copyWith(isDarkMode:  !state.isDarkMode);

  }
  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);

  }

  


}