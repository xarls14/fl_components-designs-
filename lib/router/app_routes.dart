
import 'package:flutter/material.dart';

import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    //MenuOption(route: 'home', icon: Icons.home_max_sharp, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'Listview tipo 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'Listview tipo 2', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.notifications, name: 'Alertas', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard, name: 'Card Screen', screen: const CardScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_outline_rounded, name: 'Animated Conteiner', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'Text Inputs', screen: const InputScreen()),
    MenuOption(route: 'slider', icon: Icons.slow_motion_video, name: 'Slider && Checks', screen: const SliderScreen()),
    MenuOption(route: 'listviewbuilder', icon: Icons.build_circle_outlined, name: 'InfiniteScroll & Pull to refresh', screen: const ListViewBuilderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : (BuildContext context ) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route : (BuildContext context) => option.screen
      });
    }

    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {

    'home'      :(BuildContext context) => const HomeScreen(),
    'listview2' :(BuildContext context) => const Listview2Screen(),
    'alert'     :(BuildContext context) => const AlertScreen(),
    'card'      :(BuildContext context) => const CardScreen(),
    
  }; */

  static Route<dynamic> onGenerateRoute( RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}