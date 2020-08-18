import 'package:flutter/material.dart';
import 'package:puntos_inseguros_app/src/bloc/provider.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            _crearFondo( context ),
            _loginForm( context ),
          ],
        )
      ),
    );
  }

  Widget _loginForm( BuildContext context ){
    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child:Container(
              height: 180.0,
            )
          ),

          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric( vertical: 30.0 ),
            padding: EdgeInsets.symmetric( vertical: 50.0 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0
                )
              ]
            ),
            child: Column(
              children: <Widget>[
                Text('Ingreso', style: TextStyle(fontSize: 20.0)),
                SizedBox( height: 60.0 ),
                _crearEmail(bloc),
                SizedBox( height: 30.0 ),
                _crearPassword(bloc),
                SizedBox( height: 30.0 ),
                _crearBoton(bloc),
              ]
            ),
          ),
          Text('¿Olvido su contraseña?'),
          SizedBox( height: 10.0 ),
          FlatButton(
            child: Text('Crear una nueva cuenta'),
            onPressed: () => Navigator.pushReplacementNamed(context, 'registro_cuenta'),
          ),
          SizedBox( height: 2.0 )
        ],
      ),
    );
  }

  Widget _crearEmail(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric( horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: Icon( Icons.alternate_email, color: Colors.blue),
                hintText:  'ejemplo@correo.com',
                labelText: 'correo electrónico',
                counterText: snapshot.data,
                errorText: snapshot.error
            ),
            onChanged: bloc.changeEmail,
          ),
        );
      },
    );
  }

  Widget _crearPassword(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric( horizontal: 20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon( Icons.lock_outline, color: Colors.blue),
                labelText: 'Contraseña',
                counterText: snapshot.data,
                errorText: snapshot.error
            ),
            onChanged: bloc.changePassword,
          ),
        );
      },
    );
  }

  Widget _crearBoton( LoginBloc bloc ){

    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: ( BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric( horizontal: 80.0, vertical: 15.0),
            child: Text('Ingresar'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 0.0,
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: snapshot.hasData? () => _login( bloc, context ) : null
        );
      },
    );
  }

  _login( LoginBloc bloc, BuildContext context){
    Navigator.pushNamed(context, 'home_page');
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of( context ).size;
    final fondoMorado = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(63, 63, 156, 1.0),
            Color.fromRGBO(90, 70, 178, 1.0)
          ]
        )
      ),
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.5)
      ),
    );
    return Stack(
      children: <Widget>[
        fondoMorado,
        Positioned(top: 90.0, left:30.0, child: circulo),
        Positioned(top: -40.0, right:-30.0, child: circulo),
        Positioned(top: -90.0, right:-10.0, child: circulo),
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child:Column(
            children: <Widget>[
              Icon( Icons.person_pin_circle, color:Colors.white, size: 100.0),
              SizedBox(height: 10.0, width: double.infinity),
              Text('Puntos Inseguros', style:TextStyle(color:Colors.white, fontSize: 25.0))
            ]
          ),
        )
    ],
    );
  }


}