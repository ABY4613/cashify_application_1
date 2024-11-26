// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cashify_application_1/utilits/color_const.dart';
import 'package:cashify_application_1/view/home_screen/tabs/buy_screen.dart';
import 'package:cashify_application_1/view/home_screen/tabs/profile_screen.dart';
import 'package:cashify_application_1/view/home_screen/tabs/repair_screen.dart';
import 'package:cashify_application_1/view/home_screen/tabs/sell_screen.dart';
import 'package:cashify_application_1/view/home_screen/tabs/service_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<HomeScreen> {
    int selectindex=0;

  List  screens =  [
    SellScreen(),  
    BuyScreen(),
    RepairScreen(),
    ServicesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
      // appBar: AppBar(
      //   actions:
      //    [PopupMenuButton(
      //     itemBuilder: (context) =>
      //     PopupMenuItem(
      //       child: Text("data"),onTap: (){},
      //     )
      //      )
      //      ],
      //      ),
     body: screens[selectindex],
     
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
                currentIndex:selectindex,
        onTap: (value) {
       selectindex =value;
        setState(() {
          
        });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: ColorConstants.PRIMARYCOLOR,
        backgroundColor: ColorConstants.WHITE,
        items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.sell_outlined,
            color: ColorConstants.GREYSHADE1,),
            label: "sell"
            ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: ColorConstants.GREYSHADE1),
            label: "Buy"
            ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: ColorConstants.GREYSHADE1),
            label: "Repair"
            ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps_rounded,
          color: ColorConstants.GREYSHADE1),
          label: "Services"
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,
          color: ColorConstants.GREYSHADE1),
          label: "Profile"
          ),
      ]
      ),
    );
  }
}