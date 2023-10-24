import 'package:flutter/material.dart';

class RegisterTextField extends StatelessWidget {
   RegisterTextField({super.key,required this.controller,});
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
    controller: controller,
  
    decoration: InputDecoration(
  filled: true,
  fillColor: Color(0xffEFEFEF),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          
          color: Colors.white)
      ),
      focusedBorder: OutlineInputBorder(
        
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.white)
      ),
      disabledBorder:OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.white)
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xffEFEFEF
))
      ), 
         ),
    
    );
  }
}