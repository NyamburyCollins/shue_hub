import 'package:flutter/material.dart';
Widget myLabel(String label){
  return Text(label, style:  TextStyle(color: Colors.blue),);
}


Widget myTextField({required TextEditingController controller}){
  return  TextField(
    controller: controller,
    decoration: InputDecoration(),

  );
}