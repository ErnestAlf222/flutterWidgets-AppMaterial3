import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controlls'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar en Carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar en Bote'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar en Avión militar'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar en Submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Incluir desayuno?'),
          value: wantsBreakFast, 
          onChanged: (value) => 
          setState(() {
            wantsBreakFast = !wantsBreakFast;
          })
            
          
        ),
        CheckboxListTile(
          title: const Text('Incluir almuerzo?'),
          value: wantsLunch, 
          onChanged: (value) => 
          setState(() {
            wantsLunch = !wantsLunch;           
          }),
          
        ),
        CheckboxListTile(
          title: const Text('Incluir cena?'),
          value: wantsDinner, 
          onChanged: (value) => 
          setState(() {
            wantsDinner = !wantsDinner;
          }),
          
        ),
      ],
    );
  }
}
