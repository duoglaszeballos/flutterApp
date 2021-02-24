import 'package:flutter/widgets.dart';
import 'package:forniture_app/screens/details/details_screen.dart';
import 'package:forniture_app/screens/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
