import 'package:flutter/material.dart';
import 'package:puntos_inseguros_app/src/pages/login_page.dart';
import 'package:puntos_inseguros_app/src/pages/home_page.dart';
import 'package:puntos_inseguros_app/src/pages/estadistica_delictiva_page.dart';
import 'package:puntos_inseguros_app/src/pages/politica_datos_page.dart';
import 'package:puntos_inseguros_app/src/pages/punto_critico_page.dart';
import 'package:puntos_inseguros_app/src/pages/registro_page.dart';
import 'package:puntos_inseguros_app/src/pages/reportar_incidente_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/'                    : ( BuildContext context ) => LoginPage(),
    'registro_cuenta'      : ( BuildContext context ) => RegistroPage(),
    'home_page'            : ( BuildContext context ) => HomePage(),
    'reportar_incidente'   : ( BuildContext context ) => ReportarPage(),
    'punto_critico'        : ( BuildContext context ) => PuntoCriticoPage(),
    'estadistica_delictiva': ( BuildContext context ) => EstadisticaDelictivaPage(),
    'datos_personales'     : ( BuildContext context ) => PoliticaDatoPage(),
  };
}

