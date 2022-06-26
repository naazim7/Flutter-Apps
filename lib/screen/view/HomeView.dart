import 'package:cu_apps/screen/about_app.dart';
import 'package:cu_apps/screen/hall_page.dart';
import 'package:cu_apps/screen/helpline_screen.dart';
import 'package:cu_apps/screen/ict_cell.dart';
import 'package:cu_apps/screen/view/ict_cell_details.dart';

import 'package:flutter/material.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  _HomeViewsState createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  Card HomeView(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index == 0 || index == 3 || index == 4 || index == 5
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(3.0, -1.0),
                  colors: [
                    Color.fromARGB(255, 29, 86, 136),
                    Color(0xFFffffff),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 3,
                    offset: Offset(2, 2),
                  )
                ],
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(3.0, -1.0),
                  colors: [
                    Colors.cyan,
                    Colors.amber,
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 3,
                    offset: Offset(2, 2),
                  )
                ],
              ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            }
            if (index == 1) {
              print("Testing Tappp");
            }
            if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HallPage()),
              );
            }
            if (index == 3) {
              //4.item
            }
            if (index == 4) {
              //5.item
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IctCell()),
              );
            }
            if (index == 6) {
              //6.item
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpLine()),
              );
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nikosh'),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 241),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Image.asset("assets/images/banner.png"),
          // const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    // Text(
                    //   "Search Function Will Be here",
                    //   style:
                    //       TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    // ),
                    // SearchBar(),
                    SizedBox(height: 4),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                HomeView("অফিস", "assets/images/institute.png", 0),
                HomeView("অনুষদ/বিভাগ", "assets/images/faclty.png", 1),
                HomeView("হল সমূহ", "assets/images/office.png", 2),
                HomeView("আইসিটি সেল", "assets/images/reasearch.png", 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
