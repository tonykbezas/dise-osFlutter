import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _titulos(),
                  _botonesRedondeados()
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar( context ),
      );
  }

  Widget _fondoApp(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ] 
          )
      ),
    );

    final caja = Transform.rotate(
      angle: -pi/5.0,
      child: Container(
          width: 320.0,
          height: 320.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ]
              ),
            borderRadius: BorderRadius.circular(80.0)
          ),
        ),
      );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -120.0,
          child: caja
          )
      ],
    );
  }

  Widget _titulos(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 5.0,),
            Text('Classify this transaction into a particular category', style: TextStyle(fontSize: 18.0,color: Colors.white))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar( BuildContext context ){
    return BottomNavigationBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container()
          )
        ]
        );
  }

  Widget _botonesRedondeados(){
    return Table(
      children: [
        TableRow(
          children: [
            _botonRedondeado(Colors.blue,Icons.border_all,'General'),
            _botonRedondeado(Colors.purpleAccent,Icons.directions_bus,'Bus'),
          ]
        ),
        TableRow(
          children: [
            _botonRedondeado(Colors.orange,Icons.insert_drive_file,'File'),
            _botonRedondeado(Colors.blueAccent,Icons.movie_filter,'Entertainment'),
          ]
        ),
        TableRow(
          children: [
            _botonRedondeado(Colors.pink,Icons.cloud,'Grocery'),
            _botonRedondeado(Colors.red,Icons.collections,'Photos'),
          ]
        ),
        TableRow(
          children: [
            _botonRedondeado(Colors.green,Icons.shop,'Buy'),
            _botonRedondeado(Colors.teal,Icons.help_outline,'Help'),
          ]
        ),
      ],
    );
  }

  Widget _botonRedondeado( Color color, IconData icono, String texto){
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          height: 150.0,
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(backgroundColor: color, radius: 35.0,child: Icon(icono),),
              Text(texto,style: TextStyle(color: color),)
            ],
          ),
        ),
      ),
    );
  }

}