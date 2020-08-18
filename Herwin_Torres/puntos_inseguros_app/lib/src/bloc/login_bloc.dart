import 'dart:async';

import 'package:puntos_inseguros_app/src/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validators{
  final _emailController     =  BehaviorSubject<String>();
  final _passwordController  =  BehaviorSubject<String>();

  //Recuperar datos del Stream
  Stream<String> get emailStream     => _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream  => _passwordController.stream.transform(validarPassword);

  //validar el boton de ingresar login
  Stream<bool> get formValidStream =>
    Observable.combineLatest2(emailStream, passwordStream, (e, p) => true);

  //Insertar valores del Stream
  Function(String) get changeEmail  => _emailController.sink.add;
  Function(String) get changePassword  => _passwordController.sink.add;

  //obtener el último valor ingresado a los stream
  String get email => _emailController.value;
  String get password => _passwordController.value;

  dispose(){
    _emailController?.close();
    _passwordController?.close();
  }
}