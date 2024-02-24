// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/CustomerDetails.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/component/data/customer_data.dart';

class AllCustomer extends StatefulWidget {
  const AllCustomer({super.key, required this.Name, required this.avatar});

  final String Name;
  final String avatar;

  @override
  State<AllCustomer> createState() => _AllCustomerState();
}

class _AllCustomerState extends State<AllCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Customers"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 93, 5, 247),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: cardDataList.length,
          itemBuilder: (context, index) => Column(
            children: [
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomerDetails(
                                Name: cardDataList[index].Name,
                                avatar: cardDataList[index].avatar,
                                Email: cardDataList[index].Email,
                                contact: cardDataList[index].contact,
                              )),
                    );
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 93, 5, 247),
                      child: Text(
                        cardDataList[index].avatar,
                        style: TextStyle(color: Colors.white),
                      ),
                    ).h16(context),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(cardDataList[index].Name),
                      ],
                    ),
                  ).p8(),
                ),
              ).h10(context).px12().py1(),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
