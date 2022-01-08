import 'package:flutter/material.dart';

class TextInputPersonalizado extends StatelessWidget {
  final TextEditingController? controlador;
  final String? rotulo;
  final String? placeholder;
  final IconData? iconn;

  TextInputPersonalizado({
    this.controlador,
    this.rotulo,
    this.placeholder,
    this.iconn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
            labelText: rotulo,
            hintText: placeholder,
            // ignore: unnecessary_null_comparison
            icon: iconn != null ? Icon(iconn) : null),
        keyboardType: TextInputType.number,
      ),
    );
  }
}