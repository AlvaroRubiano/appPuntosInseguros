import 'package:flutter/material.dart';

class EstadisticaDelictivaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estadística Delictiva'),
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
