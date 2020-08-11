import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {

  bool state = false;
  String nameValue;
  String idValue;
  String mailValue;
  String stateValue;
  String cityValue;
  String locationValue;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          'REGISTRO DE USUARIOS',
        ),
        elevation: 20,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Form(
              key: formkey,
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: "Nombres y Apellidos", icon: Icon(Icons.person, color: Colors.white,)),
                    onSaved: (value){
                      nameValue = value;
                    },
                    validator: (value){
                      if(value.isEmpty)return "Campo requerido";
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Identificación",icon: Icon(Icons.credit_card, color: Colors.white,)),
                    onSaved: (value){
                      idValue = value;
                    },
                    validator: (value){
                      if(value.isEmpty)return "Campo requerido";
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Correo electrónico", icon: Icon(Icons.mail, color: Colors.white,)),
                    onSaved: (value){
                      mailValue = value;
                    },
                    validator: (value){
                      if(value.isEmpty)return "Campo requerido";
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Departamento", icon: Icon(Icons.location_city, color: Colors.white,)),
                    onSaved: (value){
                      stateValue = value;
                    },
                    validator: (value){
                      if(value.isEmpty)return "Campo requerido";
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Ciudad", icon: Icon(Icons.location_city, color: Colors.white,)),
                    onSaved: (value){
                      cityValue = value;
                    },
                    validator: (value){
                      if(value.isEmpty)return "Campo requerido";
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Localidad", icon: Icon(Icons.location_on, color: Colors.white,)),
                    onSaved: (value){
                      locationValue = value;
                    },
                    validator: (value){
                      if(value.isEmpty)return "Campo requerido";
                    },
                  ),

                  Text("Sus datos personales han sido y están siendo tratados conforme con la Política de Tratamiento de Datos Personales. Para mayor información podrá consultar nuestra política en: ",
                      style: TextStyle(fontSize: 10)),

                  Row(
                    children: <Widget>[
                      Switch(
                        value: state,
                      ),
                      FlatButton(
                        child: Text("Politica de Privacidad",
                            style: TextStyle(fontSize: 15)),
                        onPressed: () {
                          _showPoliticsPage(context);
                        },
                      ),
                    ],
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("Registrarse", style: TextStyle(fontSize: 30)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      _saveInformation(context);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _saveInformation(BuildContext context){
    if(formkey.currentState.validate()){
      formkey.currentState.save();
      Navigator.of(context).pushNamed("/menu");
    }
  }

  void _showHomePage(BuildContext context) {
    Navigator.of(context).pushNamed("/");
  }

  void _showPoliticsPage(BuildContext context) {
    Navigator.of(context).pushNamed("/politics");
  }
}
