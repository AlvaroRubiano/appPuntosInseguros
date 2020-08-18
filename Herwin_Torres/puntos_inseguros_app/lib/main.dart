import 'package:flutter/material.dart';

import 'package:puntos_inseguros_app/src/pages/home_page.dart';
import 'package:puntos_inseguros_app/src/routes/routes.dart';
import 'package:puntos_inseguros_app/src/bloc/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context){
   return Provider(
       child: MaterialApp(
         title: 'Puntos Inseguros App',
         debugShowCheckedModeBanner: false,
         //home: HomePage()
         initialRoute: '/',
         routes: getApplicationRoutes(),
         theme: ThemeData(
           primaryColor: Colors.cyan
         ),
       )
   );
 }
}
