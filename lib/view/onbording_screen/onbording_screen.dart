// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cashify_application_1/utilits/color_const.dart';
import 'package:cashify_application_1/utilits/image_const.dart';
import 'package:cashify_application_1/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: ColorConstants.WHITE,
     body: SingleChildScrollView(
    
       child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 250,  top: 120, ),
                   child: Image.asset(
                             ImageConstants.MYAPPLOGO,
                             height: 100, 
                             width: 130,
                             fit: BoxFit.contain,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 250),
                   child: Text("iam here to",
                    style: GoogleFonts.montserrat(
                    color: ColorConstants.GREYSHADE1,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                                 )
                               ),
                 ),
                 SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(color:ColorConstants.GREYSHADE3,
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset(
                            ImageConstants.ONBOARDING1,
                               height: 100, 
                               width: 130,
                                fit: BoxFit.contain,
                                       ),
                         ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("data"),
                             Text("Shop certified refurbished ")
                           ],
                         ),
                          SizedBox(width: 10,),
                         Icon(Icons.arrow_forward)
                       ],
                     ),
                   ),
                 ),
                  SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(color:ColorConstants.GREYSHADE3,
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset(
                            ImageConstants.ONBOARDING1,
                               height: 100, 
                               width: 130,
                                fit: BoxFit.contain,
                                       ),
                         ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("data"),
                             Text("Shop certified refurbished")
                           ],
                         ),
                          SizedBox(width: 10,),
                         Icon(Icons.arrow_forward)
                   
                       ],
                     ),
                   ),
                 ),
                  SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(color:ColorConstants.GREYSHADE3,
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset(
                            ImageConstants.ONBOARDING1,
                               height: 100, 
                               width: 130,
                                fit: BoxFit.contain,
                                       ),
                         ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("data"),
                             Text("Shop certified refurbished ")
                   
                           ],
                         ),
                            SizedBox(width: 10,),
                         Icon(Icons.arrow_forward)
                       ],
                     ),
                   ),
                 ),
                 
               ],
             ),
     ),
          
        
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            InkWell(
               onTap: () {
                 Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => HomeScreen(),));
               },
              child: Text(
                "skip",
                style: GoogleFonts.montserrat(
                    color: ColorConstants.PRIMARYCOLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



























