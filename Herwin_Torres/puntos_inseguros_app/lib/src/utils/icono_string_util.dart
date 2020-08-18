import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'create'        : Icons.create,
  'add_location'  : Icons.add_location,
  'equalizer'     : Icons.equalizer,
  'local_library' : Icons.local_library,

};

Icon getIcon(String nombreIcono){
  return Icon( _icons[nombreIcono], color: Colors.blue);
}