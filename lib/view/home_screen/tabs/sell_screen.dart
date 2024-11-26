// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cashify_application_1/utilits/color_const.dart';
import 'package:cashify_application_1/utilits/image_const.dart';
import 'package:cashify_application_1/view/dummy_db.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SellScreen extends StatefulWidget {
  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sell"),
        backgroundColor: ColorConstants.PRIMARYCOLOR,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search your Mobile Phone to sell",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),
             Column(
      children: [
        CarouselSlider.builder(
          itemCount: DummyDb.featuredItemsList.length,
          options: CarouselOptions(
            height: 189,
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
            ]),
      
  
  

            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Sell For Cash",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              childAspectRatio: 1,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(8.0),
              children: [
                _buildSellItem("Sell Phone",ImageConstants.ONBOARDING1),
                _buildSellItem("Sell Laptop",ImageConstants.LAP),
                _buildSellItem("Sell TV", ImageConstants.TV),
                _buildSellItem("Sell Tablet", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell Earbuds", ImageConstants.EARBUD),
                _buildSellItem("Sell Smartwatch",ImageConstants.SMARTWATCH ),
                _buildSellItem("Sell Smart Speakers",ImageConstants.SPEAKER ),
                _buildSellItem("Sell iMac",ImageConstants.IMAC ),
                _buildSellItem("Sell Gaming Console", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell Car", ImageConstants.CAR),
                _buildSellItem("Sell DSLR Camera", ImageConstants.DSLR),
                _buildSellItem("Sell AC", ImageConstants.AC),
               
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290),
              child: Text("Others" ,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
             GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 1,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(8.0),
              children: [
                _buildSellItem("Repair Phone",ImageConstants.REPAIR),
                _buildSellItem("Find New Phone",ImageConstants.SELLPHONE),
                _buildSellItem("Recycle", ImageConstants.RECYCLE),
                _buildSellItem("Nearby Stores", ImageConstants.ONBOARDING1),
               _buildSellItem("Become Cashify Partner", ImageConstants.BECOME),
              ],
            ),
            ]
          
        
      
        )));
  }

  

  Widget _buildSellItem(String title,String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset(
        imagePath, 
        height: 50, 
        width: 50,
      ),
        
        Text(title, textAlign: TextAlign.center),
      ],
    );
  }
}