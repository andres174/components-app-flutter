import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key, required this.imgUrl, this.name});

  final String imgUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      shadowColor: AppTheme.primaryColor.withOpacity(0.9),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(image: NetworkImage(imgUrl), 
          placeholder: const AssetImage('assets/loaders/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 500),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!)
            )
          
            
        ],
      ),
    );
  }
}