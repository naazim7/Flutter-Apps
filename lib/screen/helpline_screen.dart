import 'package:cu_apps/widgets/custom_appbar.dart';
import 'package:cu_apps/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HelpLine extends StatelessWidget {
  const HelpLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      //Drawer

      drawer: CustomDrawer(),

      //Appbar

      appBar: CustomAppBar("হেল্পলাইন"),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: Card(
                  elevation: 5,
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              children: [
                                Text("Location",
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    "Room No-203, ICT Cell,\nIT Building, University of Chittagong"),
                                const SizedBox(height: 15),
                                Text("Our hours",
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    "09:00 AM – 03.30 PM ( Sunday - Thursday)"),
                                const SizedBox(height: 15),
                                Text("Contact",
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    "Phone: +880 31-2606001-10, Ext 4255\nEmail: ict@cu.ac.bd")
                              ],
                            ))),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
