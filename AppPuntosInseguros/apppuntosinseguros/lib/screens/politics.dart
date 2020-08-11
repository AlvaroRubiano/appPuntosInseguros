import 'dart:ui';

import 'package:flutter/material.dart';

class PoliticsPage extends StatelessWidget {

  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          'POLITICAS DE USO',
        ),
        elevation: 20,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Políticas de Tratamiento y Protección de Datos", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("Puntos Inseguros, acogiendo y dando cumplimiento a lo dispuesto en la ley 1581 de 2012 y el Decreto Reglamentario 1377 de 2013 y lo consignado en el artículo 15 de nuestra Constitución Política, adopta y aplica la presente Política para el tratamiento de los datos personales. Puntos Inseguros, manifiesta que garantiza la intimidad, derechos a la privacidad, y el buen nombre de las personas, durante el proceso del tratamiento de datos personales, en todas las actividades, las cuales tendrán los principios de confidencialidad, seguridad, legalidad, acceso, libertad y transparencia.Se compromete a no revelar la información que se digita o transfiere a nuestra en la aplicación, de acuerdo con las normas de la Ley 527 que reglamenta el Comercio Electrónico en Colombia y la Ley 1581 de 2012 sobre el uso de datos confidenciales. Con la presente Política de Tratamiento y Protección de Datos Personales, se supledejando sin efecto acuerdos y políticas expedidas con anterioridad.Puntos Inseguros, para dar cumplimiento a las políticas de protección de datosy a las obligaciones de la Ley 1581 de 2012, sus Decretos Reglamentarios y lasdemás normas que la complementen, adicionen, enriquezcan o modifiquen, tieneen cuenta lo siguiente para el manejo de información y datos personales:La información personal es uno de los activos más importantes, por lo tanto, eltratamiento de esta información se realiza con sumo cuidado y atendiendo loestablecido por la ley, garantizando a las personas el pleno ejercicio y respeto porsu derecho del Hábeas Data.La información que se encuentra en la Base de Datos propia ha sido obtenidaen desarrollo de la actividad de Puntos Inseguros, su recopilación se ha hecho y sehará siempre atendiendo a los criterios y normatividad legal.ALCANCE DE LA POLÍTICA DE PROTECCIÓN DE DATOS:La Política de Protección de Datos Personales de Puntos Inseguros se aplicará a todaslas Bases de Datos y/o archivos que contengan Datos Personales, que para PuntosInseguros sea objeto de Tratamiento como responsable y/o encargado del tratamientode Datos Personales.El Tratamiento de los Datos Personales se deberá hacer en los términos, condicionesy alcances de la autorización del Titular y/o en aplicación de las normas especialescuando proceda alguna excepción legal para hacerlo. Cualquier tipo de solicitud,producto del ejercicio de los deberes y derechos consagrados en la política, podrá dirigirse al correo electrónico: puntosinseguros@gmail.com.",
                  style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }

  void _showHomePage(BuildContext context) {
    Navigator.of(context).pushNamed("/");
  }
}