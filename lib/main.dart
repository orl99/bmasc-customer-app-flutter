import 'package:bmasc_customer_app_flutter_1/features/home_dashboard/presentation/pages/home_main_dashboard.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      darkTheme: ThemeData(
      brightness: Brightness.dark,
      // additional settings go here
    ),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blue
    ),
      home: HomeDashboard()
    );
  }
}