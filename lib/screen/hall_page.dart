import 'package:cu_apps/screen/view/hall_list.dart';
import 'package:cu_apps/widgets/custom_appbar.dart';
import 'package:cu_apps/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HallPage extends StatelessWidget {
  const HallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      //Drawer

      drawer: CustomDrawer(),

      //Appbar

      appBar: CustomAppBar("হল সমূহ"),
      body: Container(child: HallList()),
    ));
  }
}
