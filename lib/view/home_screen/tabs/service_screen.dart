// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cashify_application_1/utilits/color_const.dart';
import 'package:cashify_application_1/utilits/image_const.dart';
import 'package:cashify_application_1/view/dummy_db.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                _buildSellItem("Sell Laptop",ImageConstants.ONBOARDING1),
                _buildSellItem("Sell TV", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell Tablet", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell Earbuds", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell Smartwatch",ImageConstants.ONBOARDING1 ),
                _buildSellItem("Sell Smart Speakers",ImageConstants.ONBOARDING1 ),
                _buildSellItem("Sell iMac",ImageConstants.ONBOARDING1 ),
                _buildSellItem("Sell Gaming Console", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell Car", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell DSLR Camera", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell AC", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell DSLR Camera", ImageConstants.ONBOARDING1),
                _buildSellItem("Sell AC", ImageConstants.ONBOARDING1),
              ],
            ),

          Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text("Buy Refurbished" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
             GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              childAspectRatio: 1,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(8.0),
              children: [
                _buildSellItem("Refurbished Phones",ImageConstants.RECYCLE),
                _buildSellItem("Find New Phone",ImageConstants.ONBOARDING1),
                _buildSellItem("Recycle", ImageConstants.ONBOARDING1),
                
              
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Text("Others" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
             GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              childAspectRatio: 1,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(8.0),
              children: [
                _buildSellItem("Repair Phone",ImageConstants.ONBOARDING1),
                _buildSellItem("Find New Phone",ImageConstants.ONBOARDING1),
                _buildSellItem("Recycle", ImageConstants.ONBOARDING1),
                _buildSellItem("Nearby Stores", ImageConstants.ONBOARDING1),
              
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
        imagePath, // Corrected to use imagePath parameter
        height: 50, // You can adjust the size as needed
        width: 50,
      ),
        
        Text(title, textAlign: TextAlign.center),
      ],
    );
  }
}