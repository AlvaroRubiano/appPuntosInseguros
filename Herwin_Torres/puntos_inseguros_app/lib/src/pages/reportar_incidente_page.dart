import 'package:flutter/material.dart';

class ReportarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Reportar Incidente'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}