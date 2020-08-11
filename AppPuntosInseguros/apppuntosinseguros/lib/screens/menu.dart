import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {

  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          '¿QUE ESTA SUCEDIENDO?',
        ),
        elevation: 20,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.report,
                        color: Colors.white,
                        size: 50.0),
                    ),
                    Expanded(
                      child: Text('Reportar un incidente'),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios,color: Colors.white,
                            size: 50.0),
                        onPressed: (){
                          _goReport(context);
                        },
                      ),
                    ),
                  ]
              ),
              Row(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.map,
                          color: Colors.white,
                          size: 50.0),
                    ),
                    Expanded(
                      child: Text('Ver puntos criticos'),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios,color: Colors.white,
                            size: 50.0),
                        onPressed: (){
                          _goMap(context);
                        },
                      ),
                    ),
                  ]
              ),
              Row(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.show_chart,
                          color: Colors.white,
                          size: 50.0),
                    ),
                    Expanded(
                      child: Text('Estadística delictiva'),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios,color: Colors.white,
                            size: 50.0),
                        onPressed: (){
                          _goStadistics(context);
                        },
                      ),
                    ),
                  ]
              ),

            ],
          ),
        ),
      ),
    );
  }

  void _showHomePage(BuildContext context) {
    Navigator.of(context).pushNamed("/");
  }

  void _goMap(BuildContext context) {
    Navigator.of(context).pushNamed("/map");
  }
  void _goStadistics(BuildContext context) {
    Navigator.of(context).pushNamed("/stadistics");
  }
  void _goReport(BuildContext context) {
    Navigator.of(context).pushNamed("/report");
  }


}