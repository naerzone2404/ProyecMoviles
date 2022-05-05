// import 'package:flutter/material.dart';

// class Home extends StatefulWidget{
//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//    Color _originalTextColorBody = Colors.black;
//    Color _originalBackgroundColorBody= Colors.white;
//    Color _originalBackgroundColorAppBar = Colors.blue;

//    Color _cambioColor = Colors.purple;
//    Color _colorAppbar = Colors.yellow;
//    Color _backgroundbody = Colors.orange;


//     Color _darkModeTextColorBody = Colors.green;
//     Color _darkModeBackgroundColorBody = Colors.red;
//     Color _darkModeBackgroundColorAppBar=Colors.black;
//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
      
//       //esto es el Drawer de la izquierda
//       drawer:Drawer(
//         child: ListView(
//           children: [ListTile( title: Text('item 1', style: TextStyle(),),
//           leading: Icon(Icons.account_balance_sharp),
//           ),
//           ListTile( title: Text('item 2'),
//           )],
//           ) ),


//       //esto es el EndDrawer de la derecha
//       endDrawer: Drawer(
//         backgroundColor: Colors.green[600],
//         child: ListView(
//           children: [
//           ListTile( title: Text('item 1', style: TextStyle(),),
//           leading: Icon(Icons.account_circle_sharp),
//           ),
//           ListTile( title: Text('item 2'),
//           )
//         ],
//       )),
//       appBar: AppBar(title: const Text('Tambopata Apps'),
//       backgroundColor: _originalBackgroundColorAppBar,),
//       body:  Center(
//         child:  Text(
//           'Holaaa!!',
//           style: TextStyle(color: _originalTextColorBody),
//           )),
      
//       backgroundColor: _originalBackgroundColorBody,
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: _botonesFlotantes(),
//       persistentFooterButtons: [
//         ElevatedButton(onPressed: () {print("Un botón persistente 1");}, 
//         child: Icon(Icons.ac_unit_outlined),
//         style:ElevatedButton.styleFrom(primary: Colors.red),
//         ),
//         ElevatedButton(onPressed: () {print("Un botón persistente 2");},
//          child: Icon(Icons.access_alarm),
//         style: ElevatedButton.styleFrom(primary: Colors.green),) 
//       ],
//     );
//   }

//   void _modoOscuro() {
//     setState(() {
//       _originalTextColorBody = _cambioColor;
//       _originalBackgroundColorBody =_colorAppbar;
//       _originalBackgroundColorAppBar=_backgroundbody;
//       print('click en boton dark mode');
//     });
//   }

//   void _modoClaro() {
//     setState(() {
//       _originalTextColorBody = _darkModeTextColorBody;
//       _originalBackgroundColorBody =_darkModeBackgroundColorBody;
//       _originalBackgroundColorAppBar=_darkModeBackgroundColorAppBar;
//       print('click en boton dark mode');
//     });
//   }

//  Widget _botonesFlotantes() {
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           FloatingActionButton(onPressed: _modoOscuro,
//           child:  const Icon(Icons.dark_mode),
//           ),
//           FloatingActionButton(onPressed: _modoClaro,
//           child:  const Icon(Icons.light_mode),
//           ),
//         ],
//       );
//  }
// }