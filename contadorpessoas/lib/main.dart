import 'package:contadorpessoas/appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de pessoas",
    debugShowCheckedModeBanner: false,
    home: Inicio(),
  ));
}

class Inicio extends StatefulWidget {
  _InicioState createState() => _InicioState();

}

class _InicioState extends State<Inicio> {
  int _people = 0;
  String _infoText = ' ';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('images/foto2.jpg',
          fit: BoxFit.cover),
          Column(
            children: [
              AppBarCustom('Contador de Pessoas'),
              Padding(padding: EdgeInsets.only(top: 400)),
              Text(
                'Pessoas: $_people',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        _changePeople(-1);
                      },
                      child: Text('-1',
                          style: TextStyle(fontSize: 30, color: Colors.teal))),
                  TextButton(
                      onPressed: () {
                        _changePeople(1);
                      },
                      child: Text('+1',
                          style: TextStyle(fontSize: 30, color: Colors.teal))),
                ],
              ),
              Text(_infoText, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),],

          ),
        ],
      )
    );
  }

  void _changePeople(int delta){
    setState(() {
      _people+=delta;

      if(_people < 0) {
        _infoText = "Mundo invertido";
      } else if(_people <=10) {
        _infoText = "Pode entrar";
      } else {
        _infoText = "Lotado";
      }
    });

  }

}


