import 'package:flutter/material.dart';
class AppButtons extends StatelessWidget {
  const AppButtons({super.key,required this.onPressed,required this.title,required this.textColor,
  required this.buttonColor,
required this.height,
required this.width
  });
 final  VoidCallback onPressed;
 final String title;
 final Color textColor;
 final Color buttonColor;
 final double width;
 final double height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        
      style: ButtonStyle(
  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),      
fixedSize: MaterialStateProperty.all(Size(width, height)),
      backgroundColor: MaterialStateColor.resolveWith((states) => buttonColor)  ,
      ),
      onPressed: onPressed,
       child: Text(title,
    style: TextStyle(
      color: textColor,
       ),
     ),
    );
  }
}