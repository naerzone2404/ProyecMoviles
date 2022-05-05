import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
import 'package:my_app_tambo/src/vistas/home.dart';

import '../componentes/cartel_principal.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      );
    }
}