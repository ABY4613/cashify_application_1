// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cashify_application_1/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String selectedCity = "Noida";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.location_on, color: Colors.teal),
            SizedBox(width: 5),
            DropdownButton<String>(
              value: selectedCity,
              items: <String>['Noida', 'Delhi', 'Mumbai', 'Bengaluru']
                  .map((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: (String? newCity) {
                setState(() {
                  selectedCity = newCity!;
                });
              },
              underline: SizedBox(),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Login Banner
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Please login/signup",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white,
                      
                    ),
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );

                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Expandable List
            _buildExpandableItem(Icons.phone_android, "Services"),
            _buildExpandableItem(Icons.info, "About"),
            
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(children: [
                  Icon(Icons.import_contacts, color: Colors.teal),
                  SizedBox(width: 15),
                Text("Refer & Earns"),
                      
                ],),
              ),
    ),
    InkWell(
      onTap: () {
        
      },
      child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: [
                    Icon(Icons.local_offer, color: Colors.teal),
                    SizedBox(width: 15),
                  Text("New Offers"),
                        
                  ],),
                ),
      ),
    ),
            _buildExpandableItem(Icons.help_outline, "Help"),

            // Version Info
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Center(
                child: Text(
                  "Build: 4.1 (1.1.44)",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandableItem(IconData icon, String title) {
    return ExpansionTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(title),
      trailing: Icon(Icons.add),
      children: <Widget>[
        ListTile(
          title: Text("Details about $title"),
          
        ),
      ],
      
    );
    
  }
}
