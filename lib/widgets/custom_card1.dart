import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Column(
        children: [
          const ListTile(
            leading: Icon(Icons.leaderboard, color: AppTheme.primaryColor,),
            title: Text('Soy un titulo'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris facilisis fringilla felis, venenatis vestibulum magna semper suscipit. Duis eleifend mattis ex. Aliquam porta quis elit sed hendrerit.'),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                TextButton(onPressed: () {
                  
                }, child: const Text('Cancel')),
                TextButton(onPressed:() {

                }, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}