import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/AllCustomer.dart';
import 'package:flutter_application_1/screens/NewCustomer.dart';
import 'package:flutter_application_1/screens/Transaction.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/img2.jpg");
    Image image = Image(
      image: assetImage,
    );
    return Scaffold(
      backgroundColor: Vx.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 82),
                child: image,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 93, 5, 247),
                        minimumSize: const Size(250, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllCustomer(
                                Name: "AllCustomer",
                                avatar: " Av",
                              ),
                            ));
                      },
                      child: const Text("View All Customers",
                          style:
                              TextStyle(fontSize: 20, color: Colors.white)))),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 93, 5, 247),
                        minimumSize: const Size(250, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewCustomer(),
                            ));
                      },
                      child: const Text("Add New Customer",
                          style:
                              TextStyle(fontSize: 20, color: Colors.white)))),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 93, 5, 247),
                        minimumSize: const Size(250, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Transaction(),
                            ));
                      },
                      child: const Text("Transaction",
                          style:
                              TextStyle(fontSize: 20, color: Colors.white)))),
            ],
          ),
        ),
      ),
    );
  }
}

DetailPage() {}
