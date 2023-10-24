import 'package:flutter/material.dart';
import 'package:sales_man/app_colors.dart';
import 'package:sales_man/home_screen.dart';
import 'package:sales_man/widgets/app_buttons.dart';
import 'package:sales_man/widgets/text_feild.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final userName= TextEditingController();
  final password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*1,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              SizedBox(
                        height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width*0.5,
                        child: Image.asset('assets/images/main.jpg'),
                        ),
      
                        SizedBox(height: MediaQuery.of(context).size.height*0.1,),
      
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width*0.1
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('USER NAME',style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),),
                              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                          RegisterTextField(controller: userName),
                            SizedBox(height: MediaQuery.of(context).size.height*0.04,), 
                                Text('PASSWORD',style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),),
                              SizedBox(height: MediaQuery.of(context).size.height*0.01,),

                          RegisterTextField(controller: userName)
                            ],
                          ),
                        ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height*0.1,

                                ),

                                Padding(
                                  
                                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
                                  child: AppButtons( 
                                    title: 'LOGIN',
                                   textColor: Colors.white, 
                                  buttonColor: AppColors.primaryColor,
                                  height: MediaQuery.of(context).size.height*0.065,
                                  width: MediaQuery.of(context).size.width*1,
                                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));},),
                                )
             ],
            ),
        ),
      ),
    );
  }
}