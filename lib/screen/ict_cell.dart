import 'package:cu_apps/screen/view/ict_cell_details.dart';

import 'package:cu_apps/widgets/custom_appbar.dart';
import 'package:cu_apps/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class IctCell extends StatelessWidget {
  const IctCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      //Drawer

      drawer: CustomDrawer(),

      //Appbar

      appBar: CustomAppBar("আইসিটি সেল"),
      body: Container(child: IctCellView()),
    ));
  }
}
