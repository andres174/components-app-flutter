import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double sliderValue = 100;
  bool sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primaryColor,
            min: 50,
            max: 400,
            /* divisions: 10, */
            value: sliderValue, 
            onChanged: !sliderEnable ? null : (value) {
              //print(value);
              sliderValue = value;
              setState(() {
                
              });
            },
          ),

          /* Checkbox(
            value: sliderEnable, 
            onChanged:(value) {
              sliderEnable = value ?? true;
              setState(() {
                
              });
            },
          ), */

          CheckboxListTile(
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primaryColor,
            value: sliderEnable, 
            onChanged: (value) {
              sliderEnable = value ?? true;
              setState(() {});
            }
          ),

          SwitchListTile(
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primaryColor,
            value: sliderEnable, 
            onChanged: (value) {
              sliderEnable = value;
              setState(() {});
            }
          ),
          const AboutListTile(),
          const SizedBox(height: 150,),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e632e5f3-ea51-4a14-a0fe-3478869513d3/df0wzy4-026eabe4-803f-485d-9b56-2d535377a9d3.png/v1/fill/w_740,h_1000/ashe___league_of_legends_render_png_by_screwbattle_df0wzy4-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAwMCIsInBhdGgiOiJcL2ZcL2U2MzJlNWYzLWVhNTEtNGExNC1hMGZlLTM0Nzg4Njk1MTNkM1wvZGYwd3p5NC0wMjZlYWJlNC04MDNmLTQ4NWQtOWI1Ni0yZDUzNTM3N2E5ZDMucG5nIiwid2lkdGgiOiI8PTc0MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.X_ND02yBSqAiyELoxjNOXadw3vEP1Mdn4gHtPLvvIN0', 
                ),
                fit: BoxFit.contain,
                width: sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}