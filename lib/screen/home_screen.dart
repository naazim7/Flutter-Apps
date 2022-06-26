// ignore_for_file: prefer_const_constructors

import 'package:cu_apps/screen/view/HomeView.dart';
import 'package:cu_apps/widgets/custom_appbar.dart';
import 'package:cu_apps/widgets/custom_drawer.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      //Drawer

      drawer: CustomDrawer(),

      //Appbar

      appBar: CustomAppBar('চট্টগ্রাম বিশ্ববিদ্যালয়'),

      body: HomeViews(),
      persistentFooterButtons: [
        Container(
          width: double.infinity,
          child: Text(
            'ICT Cell, University of Chittagong',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 1, 31, 19),
              letterSpacing: 1,
            ),
          ),
        )
      ],
    ));
  }
}
