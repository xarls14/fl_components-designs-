import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnabled
              ? (value) {
                _sliderValue = value;
                setState(() {});
              }
              : null
            ),

            /*Checkbox(
              value: _sliderEnabled, 
              onChanged: ( value ){
                _sliderEnabled = value ?? true;
                setState(() {
                  
                });
              }
            ),*/

            /*CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar slider"),
              value: _sliderEnabled, 
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              },
            ),*/

            /*Switch(
              value: _sliderEnabled, 
              onChanged: (value) => setState(() { _sliderEnabled = value ?? true; }),
            ),*/
            //.adaptative para filtrar por S.O.
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar Slider"),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value ?? true;
              }),
            ),

            const AboutListTile(),

            Image(
              image: const NetworkImage('https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2023/02/Batman-png-transparente.png?w=1000&ssl=1'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),

            const SizedBox(height: 100,),
          ],
        ),
      )
    );
  }
}