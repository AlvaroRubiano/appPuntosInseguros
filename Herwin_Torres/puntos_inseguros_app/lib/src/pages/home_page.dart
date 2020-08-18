import 'package:flutter/material.dart';

import 'package:puntos_inseguros_app/src/providers/menu_provider.dart';
import 'package:puntos_inseguros_app/src/utils/icono_string_util.dart';
import 'package:puntos_inseguros_app/src/pages/reportar_incidente_page.dart';
import 'package:puntos_inseguros_app/src/bloc/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('¿Que está ocurriendo?'),
      ),
      body: _Lista(),
    );
  }

  Widget _Lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _ListaItems( snapshot.data, context),
        );
      },
    );

  }

  List<Widget> _ListaItems( List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          //final route = MaterialPageRoute(
            //builder: (context) => ReportarPage()
          //);
          //Navigator.push(context, route);
        },
      );
      opciones.add(widgetTemp);
      opciones.add(Divider());

    });

    return opciones;
  }
}
