import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({
    Key? key,
    required this.Name,
    required this.avatar,
    required this.Email,
    required this.contact,
  }) : super(key: key);

  final String Name;
  final String avatar;
  final String Email;
  final String contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 135.0, top: 20.0),
              child: CircleAvatar(
                maxRadius: 70,
                backgroundColor: const Color.fromARGB(255, 93, 5, 247),
                child: Text(
                  "$avatar",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ).p16(),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(top: 20, left: 125),
              child: Text(
                "Name: $Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 125),
              child: Text(
                "Email: $Email",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 125),
              child: Text(
                "Contact: $contact",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 250, left: 110),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 93, 5, 247),
                    minimumSize: const Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Transfer",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
