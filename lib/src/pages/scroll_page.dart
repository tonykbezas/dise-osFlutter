import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      ),
    );
  }

  Widget _pagina1(){
    return Center(
      child: Stack(
        children: <Widget>[
          _fondo(),
          _imagen(),
          _texto()
        ],
      ),
    );
  }

  Widget _fondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagen(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(image: AssetImage('assets/scroll-1.png'), fit: BoxFit.cover,)
      );
  }

  Widget _texto(){

    final estilo = TextStyle(fontSize: 40.0,color: Colors.white);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°',style: estilo ,),
          Text('Miércoles', style: estilo,),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70,color: Colors.white,)
        ],
      )
      );
  }

  Widget _pagina2(){
    return Center(
      child: Stack(
        children: <Widget>[
          _fondo(),
          _boton()
        ],
      ),
    );
  }

  Widget _boton(){
    return Center(
      child: MaterialButton(
        onPressed: (){},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 15.0),
          child: Text('Bienvenido', style: TextStyle(fontSize: 18.0),)
          ),
        color: Colors.blue,
        shape: StadiumBorder(),
        textColor: Colors.white,
        ),
    );
  }

}