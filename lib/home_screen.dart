import 'package:flutter/material.dart';
import 'package:sales_man/all_previous_orders.dart';
import 'package:sales_man/app_colors.dart';
import 'package:sales_man/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 List <Widget> navigationBarWidgets=[AllPreviousOrders(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: navigationBarWidgets.elementAt(navigationBarIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffF2F2F2),
        items: [
        BottomNavigationBarItem(
          label: '',
          
          icon: SizedBox(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.08,
            child: Image.asset('assets/images/home.png'))),
                  BottomNavigationBarItem(
          label: '',
          
          icon: SizedBox(
            
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.08,
            child: Image.asset('assets/images/user.png')))

      ]),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [SizedBox(
          height: MediaQuery.of(context).size.height*0.04,
          width: MediaQuery.of(context).size.width*0.2,
          child: Image.asset('assets/images/car.png'))],
      ),
      drawer: Drawer(),
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.height*0.055,
        width: MediaQuery.of(context).size.width*0.385,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(14)
        ),
        child: Center(child: Text('+ حساب عمولة شهرية',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
        ),)),
      ),
    );
  }
}

int navigationBarIndex=0;