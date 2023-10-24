import 'package:flutter/material.dart';
import 'package:sales_man/app_colors.dart';

class AllPreviousOrders extends StatelessWidget {
  const AllPreviousOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
      child: Column(
    
        children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
           Container(
            height: MediaQuery.of(context).size.height*0.23,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.primaryColor,width: 2)
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Image.asset('assets/images/report.png')),
                 SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                 Text('جميع العمولات السابقة',
                 style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold
                 ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}