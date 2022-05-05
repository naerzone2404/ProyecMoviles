import 'dart:convert';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _colorDelTitulo = Color.fromARGB(255, 20, 98, 162);

// esto es la lista de  body principal
  final lugaresTuristicos = [
    'Plaza de Armas',
    'Isla de los monos',
    'Lago Sandoval',
    'Aventura de 3 días en la selva amazónica',
    'Aventura de 3 días en la selva amazónica'
  ];
  // esto es lista del Drawer
  final contextoLugares = [
    'Donde quedarte',
    'Donde Comer',
    'Con quien visitar',
    'Maps'
  ];
  // esto es la lista del EndDrawer

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black26,
        //esto es el Drawer de la izquierda
        drawer: Drawer(
            child: Container(
              color: Colors.amber[600],
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      
                      title: Text(contextoLugares[index],
                      style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'RobotoMono' ),
                      ),
                      leading: Icon(Icons.account_balance_outlined),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: contextoLugares.length),
            )),

        //esto es el EndDrawer de la derecha
        endDrawer: Drawer(
            backgroundColor: Colors.red[600],
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    'Nombre: Usuario',
                    style: TextStyle(),
                  ),
                  leading: Icon(Icons.account_circle_sharp),
                ),
                ListTile(
                  title: Text('Configuraciones'),
                  leading: Icon(Icons.account_circle_sharp),
                )
              ],
            )),
        appBar: AppBar(
          title: const Text('Tambopata Apps'),
          backgroundColor: _colorDelTitulo,
        ),

        // este es el BODY <<<<<<<<<<<<<<-------->>>>>>>>>>>>>>>>>>

        body: ListView(
          children: [
            lugaresTuristico(), 
            lugaresTuristico()]));
  }
}

class lugaresTuristico extends StatelessWidget {
  const lugaresTuristico({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 100.0,
        shadowColor: Colors.brown,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                  'https://www.iperu.org/wp-content/uploads/2016/02/puerto-maldonado-peru.jpg'),
              height: 250.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              child: Text(
                'La plaza de armas de Puerto Maldonado se encuentra ubicado muy cerca al puente Billinghurst (Puente intercontinental), entre la Av. León Velarde, Daniel Alcides Carrión, Jr. Loreto y Jr. Arequipa. En la plaza de armas de Puerto Maldonado se puede apreciar parte de la flora representativa, con árboles de mango, castañuelas, palmeras, plantas exóticas que forman parte de la belleza ornamental. En el centro se encuentra una glorieta, es de arquitectura moderna, legado de la colonia japonesa, tiene relojes a cada lado.',
              ),
              padding: EdgeInsets.all(20),
            ),
          ],
        ));
  }
}
