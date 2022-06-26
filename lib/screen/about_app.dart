import 'package:cu_apps/screen/helpline_screen.dart';
import 'package:cu_apps/widgets/custom_appbar.dart';
import 'package:cu_apps/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      //Drawer

      drawer: CustomDrawer(),
      //Appbar

      appBar: CustomAppBar("About CU App"),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Card(
                elevation: 5,
                child: Column(
                  children: [
                    Center(
                      child: ListTile(
                        title: Row(
                          children: <Widget>[
                            Icon(Icons.android),
                            SizedBox(
                              width:
                                  12, // here put the desired space between the icon and the text
                            ),
                            Text(
                                "Developed By ICT Cell,\nUniversity of Chittagong"),
                            // here we could use a column widget if we want to add a subtitle
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: ListTile(
                        title: Row(
                          children: <Widget>[
                            Icon(Icons.view_comfy_rounded),
                            SizedBox(
                              width:
                                  12, // here put the desired space between the icon and the text
                            ),
                            Text("Current Version: 1.0.0"),
                            // here we could use a column widget if we want to add a subtitle
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 0),
            Card(
                elevation: 5,
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: RichText(
                            text: TextSpan(
                                text:
                                    'CU Apps is an initiative taken by University of Chittagong to Provide Services through the mobile applications. Now Available on both Android and IOS devices\n\nFeatures:\n\n-Important Contacts\n-Transport Schedule\n-Important Notice Update\n-Admission Test Helpline\n-Train Schedules\n-Helpdesk',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16.0)),
                          ))),
                ))
          ],
        ),
      ),
    ));
  }
}
// ignore_for_file: prefer_const_constructors

