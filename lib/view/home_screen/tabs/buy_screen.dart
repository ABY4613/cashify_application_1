// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cashify_application_1/utilits/color_const.dart';
import 'package:cashify_application_1/utilits/image_const.dart';
import 'package:cashify_application_1/view/dummy_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuyScreen extends StatefulWidget {
  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 900000; // 15-minute countdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(height: 60,
             color: ColorConstants.PRIMARYCOLOR,
              child: Center(
                child: Text(
                  "India's Largest Refurbished Mobile Phone Store",
                  style: TextStyle(
                    color: ColorConstants.BLACK),))),
        
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.lightBlue[100],
              child: Column(
                children: [
                  Text(
                    "Hurry Up! Sale Ends In",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  CountdownTimer(
                    endTime: endTime,
                    widgetBuilder: (_, time) {
                      if (time == null) {
                        return Text("Sale Ended");
                      }
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                       Text("00  :  00  :  15  :  55")
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),

            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for mobiles, accessories & More",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),

            Container(
              height: 120,
              child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              childAspectRatio: 1,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(8.0),
              children: [
                _buildSellItem("Repair Phone",ImageConstants.LAP),
                _buildSellItem("Find New Phone",ImageConstants.LAP),
                _buildSellItem("Recycle", ImageConstants.LAP),
                _buildSellItem("Nearby Stores", ImageConstants.LAP),
              ],
            ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 16),
             
              child: Column(
                children: [
                  CarouselSlider.builder(
          itemCount: DummyDb.featuredItemsList.length,
          options: CarouselOptions(
            height: 199,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            autoPlayCurve: Curves.easeIn,
            scrollDirection: Axis.horizontal,
          ),
          itemBuilder: (context, index, realIndex) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          DummyDb.featuredItemsList[index]["imageUrl"])),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          ),
        ),
         SizedBox(
          height: 12,
        ),
        SmoothPageIndicator(
            controller: PageController(initialPage: 1),
            count: 3,
            effect: ScrollingDotsEffect(
              activeDotScale: 1.4,
              maxVisibleDots: 5,
              radius: 10,
              spacing: 8,
              dotHeight: 9,
              dotWidth: 9,
            ))
                ],
              ),
            ),

            SizedBox(height: 16),

            // Sell This Device Section
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.grey[200],
              child: Row(
                children: [
                  Image.asset(ImageConstants.ONBOARDING1,height: 69,width: 50,),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sell This Device",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text("NothingPhone 1-Get ₹17700"),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Sell Now"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
   
  
  }

 Widget _buildSellItem(String title,String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset(
        imagePath, // Corrected to use imagePath parameter
        height: 50, // You can adjust the size as needed
        width: 50,
      ),
        
        Text(title, textAlign: TextAlign.center),
      ],
    );
  }

        
  
