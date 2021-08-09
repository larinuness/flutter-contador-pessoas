import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {

  final String titulo;

  AppBarCustom(this.titulo);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo),
      backgroundColor: Colors.teal,
      centerTitle: true,

    );
  }
}
