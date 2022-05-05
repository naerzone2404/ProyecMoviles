import 'dart:convert';

import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget{
  final lugaresTuristicos = ['Isla de los monos',
  'Lago Sandoval',
  'Aventura de 3 días en la selva amazónica',
  'Aventura de 3 días en la selva amazónica'
  ];
  @override
  Widget build(BuildContext context) {
    // Map <String,String> VisitasLugares = json.decode(lugaresTuristicos);
    return Scaffold(
      appBar: AppBar(title: Text('Explorando la Reserva'),
      centerTitle: true,
      backgroundColor: Colors.green[800],
      ),
      body: ListView.separated(itemBuilder:(context, index) {
        return ListTile(title: Text(lugaresTuristicos[index]),);
      },
       separatorBuilder: (context, index)=> Divider(),
        itemCount: lugaresTuristicos.length)
    );
  }

}