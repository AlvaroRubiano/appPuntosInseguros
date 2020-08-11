import 'dart:ui';
import 'package:flutter/material.dart';
import 'screens/map.dart';
import 'screens/menu.dart';
import 'screens/politics.dart';
import 'screens/home.dart';
import 'screens/register.dart';
import 'screens/report.dart';
import 'screens/stadistics.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Puntos Inseguros',
      //home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/":(BuildContext context)=> MyHomePage(),
        "/register":(BuildContext context)=> RegisterPage(),
        "/politics":(BuildContext context)=> PoliticsPage(),
        "/menu":(BuildContext context)=> MenuPage(),
        "/map":(BuildContext context)=> MapPage(),
        "/report":(BuildContext context)=> ReportPage(),
        "/stadistics":(BuildContext context)=> StadisticsPage(),
      },
    );
  }


}
