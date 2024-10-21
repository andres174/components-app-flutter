import 'package:flutter/material.dart';
import 'package:components_app/models/models.dart';
import 'package:components_app/screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions> [
    
    /* MenuOptions(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home), */
    MenuOptions(route: 'listview1', name: 'Listas tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOptions(route: 'listview2', name: 'Listas tipo 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOptions(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOptions(route: 'card', name: 'Cards', screen: const CardScreen(), icon: Icons.rectangle_rounded),
    MenuOptions(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle),
    MenuOptions(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle),
    MenuOptions(route: 'inputs', name: 'Inputs', screen: const InputsScreen(), icon: Icons.input),
    MenuOptions(route: 'slider', name: 'Slider & Checks', screen: const SliderScreen(), icon: Icons.slideshow),
    MenuOptions(route: 'listviewbuilder', name: 'Infinite Scroll && Pull to refresh', screen: const LisViewBuilderScreen(), icon: Icons.build),


  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes () {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home' :( context ) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route :( context ) => option.screen});
    }
    
    return appRoutes;
  } 

  /* static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => const HomeScreen(),
    '/listview1': ( context ) => const ListView1Screen(),
    '/listview2': ( context ) => const ListView2Screen(),
    '/alert': ( context ) => const AlertScreen(),
    '/card': ( context ) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ListView2Screen());
  }

}