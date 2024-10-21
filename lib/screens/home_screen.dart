import 'package:components_app/router/app_routes.dart';
import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en Flutter"),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primaryColor,),
            title: Text(AppRoutes.menuOptions[index].name),
            onTap: () {
              /* final route = MaterialPageRoute(builder: (context) => const ListView1Screen());
              Navigator.push(context, route); */
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          );
        },
      )
    );
  }
}