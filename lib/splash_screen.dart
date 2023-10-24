import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_man/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() { 
    Timer(const Duration(milliseconds: 300), () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const RegisterScreen(),
    ),
    );});
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
          color: Colors.white,
          child: Center(
                   child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Image.asset('assets/images/main.jpg')),

          ),
      ),
    );
  }
}