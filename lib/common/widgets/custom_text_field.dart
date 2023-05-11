import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String  hintText;
  const CustomTextField({
    super.key, 
  required this.controller, 
  required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField( 
      //b/s we use validators
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black54,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black54,
          )
        )
      ),
      validator: (val){

      },
    );
  }
}