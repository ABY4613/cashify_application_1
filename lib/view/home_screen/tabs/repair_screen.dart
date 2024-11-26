// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cashify_application_1/utilits/image_const.dart';
import 'package:cashify_application_1/view/dummy_db.dart';
import 'package:cashify_application_1/view/global_widget/custom_inputfield.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cashify Repair',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepairScreen(),
    );
  }
}

class RepairScreen extends StatefulWidget {
  @override
  _RepairScreenState createState() => _RepairScreenState();
}

class _RepairScreenState extends State<RepairScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cashify Repair Screen'),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomInputField(
                prefixIcon: Icons.search,
                hintTex:  "Search for mobiles",
              ),
            ),
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
          ), SizedBox(
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
              )),
          SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Top Brands" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                childAspectRatio: 1,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(8.0),
                children: [
                  _buildSellItem(ImageConstants.APPLE),
                  _buildSellItem(ImageConstants.MI),
                  _buildSellItem(ImageConstants.SAMSUG),
                   _buildSellItem(ImageConstants.VIVO),
                  _buildSellItem(ImageConstants.ONEPLUS),
                  _buildSellItem(ImageConstants.OPPO),
                   _buildSellItem(ImageConstants.REALME),
                  _buildSellItem(ImageConstants.MOTO),
                  _buildSellItem(ImageConstants.NOKIYA),
                  _buildSellItem(ImageConstants.HONNOR),
                  _buildSellItem(ImageConstants.GOOGLE),
                  _buildSellItem(ImageConstants.POCO),
                   _buildSellItem(ImageConstants.INFINX),
                  _buildSellItem(ImageConstants.IQ),
                  _buildSellItem( ImageConstants.NOTHING),
                ],
              ),
          ],
        ),
      ),
    );
    
  }

  Widget _buildSellItem(String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset(
        imagePath, 
        height: 60, 
        width: 60,
      ),
        
        
      ],
    );
  }
}
