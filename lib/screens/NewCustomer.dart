import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NewCustomer extends StatefulWidget {
  const NewCustomer({Key? key}) : super(key: key);

  @override
  State<NewCustomer> createState() => _NewCustomerState();
}

class _NewCustomerState extends State<NewCustomer> {
  TextEditingController _Name = TextEditingController();
  TextEditingController _Email = TextEditingController();
  TextEditingController _Contact = TextEditingController();
  TextEditingController _TransferAmount = TextEditingController();

  void addDetail() {
    setState(() {
      // Get the values from the controllers and add them to the list
      String name = _Name.text;
      String email = _Email.text;
      String contact = _Contact.text;
      double transferAmount = double.parse(_TransferAmount.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 93, 5, 247),
        title: "Add Account Details ".text.make(),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(top: 50),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: _Name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter Name",
                      labelText: "Name",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 50),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _Email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter Email",
                      labelText: "Email",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 40),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: _Contact,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter Contact",
                      labelText: "Contact Number",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 40),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _TransferAmount,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter Current Amount",
                      labelText: "Current Balance",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 93, 5, 247),
                      minimumSize: const Size(250, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: addDetail, // Call the function on button press
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
