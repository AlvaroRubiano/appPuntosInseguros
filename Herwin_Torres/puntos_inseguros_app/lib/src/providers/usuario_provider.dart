import 'package:http/http.dart' as http;
import 'dart:convert';

class UsuarioProvider{

  final String _firebaseToken = 'AIzaSyBV4p1ZvtAJ_avyW03VaaGRT1hl93vTYJ0';

  Future nuevoUsuario( String email, String password ) async{
    final authData = {
      'email'     : email,
      'password'  : password,
      'returnSecureToken' : true
    };

    final resp = await http.post(
      'http://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_firebaseToken',
       body: json.encode( authData )
    );

    Map<String, dynamic> decodedResp = json.decode(resp.body);
    print(decodedResp);
  }
}