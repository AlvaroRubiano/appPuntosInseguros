import 'package:flutter/material.dart';

class PuntoCriticoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puntos Críticos'),
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
