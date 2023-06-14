import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

 const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  }); 
}


const appMenuItems = <MenuItem> [

  MenuItem(
    title: 'Botones', 
    subTitle: 'Varios botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card_outlined
  ),
  MenuItem(
    title: 'Progress Indicators', 
    subTitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),
  MenuItem(
    title: 'Snack Bars y Dialogos', 
    subTitle: 'Indicadores en pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated Container', 
    subTitle: 'Statefull Widget Animado', 
    link: '/animated', 
    icon: Icons.animation_rounded
  ),
  MenuItem(
    title: 'UI Controls', 
    subTitle: 'Controladores de widgets', 
    link: '/ui-controls', 
    icon: Icons.noise_control_off_sharp
  ),
  MenuItem(
    title: 'Tutorial', 
    subTitle: 'Introducción a la app', 
    link: '/tutorial', 
    icon: Icons.youtube_searched_for_sharp
  ),

];