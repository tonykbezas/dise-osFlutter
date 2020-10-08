import 'package:flutter/material.dart';
class BasicoPage extends StatelessWidget {

  final titulos = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final subtitulos = TextStyle(fontSize: 16.0,color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _imagen(),
          _titulo(),
          _acciones(),
          _texto(),
          _texto()
        ],
        ),
      )
    );
  }

  Widget _imagen(){
    return Image(
        image: NetworkImage('https://cdn.theatlantic.com/thumbor/Kr6wArslbgBkEnOtof8t9FglV1A=/0x53:2000x1286/640x400/media/img/photo/2020/02/winners-2019-international-landscap/p01_SanderGrefte14180-443-1/original.jpg'),
      );
  }

  Widget _titulo(){
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Montañas Rusas', style: titulos,),
                      SizedBox(height: 7.0,),
                      Text('En el este de Chernobyl',style: subtitulos,)
                    ],
                  ),
                ),

                Icon(Icons.star,color: Colors.red, size: 30.0,),
                Text('41',style: TextStyle(fontSize: 20.0),)
              ],
              ),
          );
  }

  Widget _acciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call,'CALL'),
        _accion(Icons.near_me,'ROUTE'),
        _accion(Icons.share,'SHARE')
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon( icon , size: 40.0, color: Colors.blue,),
        SizedBox(height: 5.0,),
        Text(texto,style: TextStyle(fontSize: 15.0,color: Colors.blue),)
      ],
    );
  }

  Widget _texto(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
      child: Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        textAlign: TextAlign.justify,
      ),
    );
  }

}