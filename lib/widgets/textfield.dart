import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayTextfield extends StatelessWidget {
  const DisplayTextfield({this.label, this.i1, this.con});

  final String label;
  final IconData i1;
  final TextEditingController con;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 90,
      child: TextField(
        controller: con,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          prefixIcon: Icon(
            i1,
            color: Colors.black,
          ),
          labelText: label,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
