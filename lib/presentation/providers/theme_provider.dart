import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Estado => isDarkMode = boolean
final isDarkModeProvider = StateProvider((ref) => false);

// Lisatado de colores inmutables
final colorListProvider = StateProvider((ref) => colorList);

// Un simple entero
final selectedColorProvider = StateProvider((ref) => 0);