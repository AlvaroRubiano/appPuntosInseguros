import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  String userValue;
  String passValue;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          'PUNTOS INSEGUROS',
        ),
        elevation: 20,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Form(
            key: formkey,
            child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/Logo.png',
                        height: 200,
                      )
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Usuario", ),
                    onSaved: (value){
                      userValue = value;
                    },
                    validator: (value){
                      if(value.isEmpty)return "Campo requerido";
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Contraseña", ),
                    onSaved: (value){
                      passValue = value;
                    },
                    validator: (value){
                      if(value.isEmpty)return "Campo requerido";
                    },
                  ),

                  RaisedButton(
                    color: Colors.white,
                    textColor: Colors.blue[700],
                    child: Text("Ingresar", style: TextStyle(fontSize: 30)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: (){
                      _validateEntrance(context);
                    },
                  ),
                  FlatButton(
                    child: Text("¿Olvido su contraseña?",
                        style: TextStyle(fontSize: 20)),
                  ),
                  Center(
                    child: Text("¿Aun no estas registrado?",
                        style: TextStyle(fontSize: 20)),
                  ),
                  FlatButton(
                    child: Text("Registrate aqui",
                        style: TextStyle(fontSize: 20)),
                    onPressed: (){
                      _showRegisterPage(context);
                    },
                  )
                ]),
          )
        ),
      ),
    );
  }

  void _validateEntrance(BuildContext context){
    if(formkey.currentState.validate()){
      formkey.currentState.save();
      Navigator.of(context).pushNamed("/menu");
    }
  }
  void _showRegisterPage(BuildContext context) {
    Navigator.of(context).pushNamed("/register");
  }




}
