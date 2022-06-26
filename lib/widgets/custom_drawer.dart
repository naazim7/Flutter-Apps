import 'package:cu_apps/screen/about_app.dart';
import 'package:cu_apps/screen/helpline_screen.dart';
import 'package:cu_apps/screen/home_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // DrawerHeader(child: Text('Ahmer')),
          SafeArea(
              child: DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/splash/spcu.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Text(
                '',
                style: TextStyle(
                  color: Color.fromARGB(255, 28, 2, 2),
                  fontSize: 24,
                ),
              ),
            ),
          )),

          //Hoome

          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            title: Row(
              children: <Widget>[
                Icon(Icons.home),
                SizedBox(
                  width:
                      12, // here put the desired space between the icon and the text
                ),
                Text("হোমপেইজ"),
                // here we could use a column widget if we want to add a subtitle
              ],
            ),
          ),
          Divider(thickness: 1.0),

//About

          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            title: Row(
              children: <Widget>[
                Icon(Icons.local_post_office),
                SizedBox(
                  width:
                      12, // here put the desired space between the icon and the text
                ),
                Text("অফিস"),
                // here we could use a column widget if we want to add a subtitle
              ],
            ),
          ),
          Divider(thickness: 1.0),
//List Tile 3
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            title: Row(
              children: <Widget>[
                Icon(Icons.group),
                SizedBox(
                  width:
                      12, // here put the desired space between the icon and the text
                ),
                Text("সিনেট"),
                // here we could use a column widget if we want to add a subtitle
              ],
            ),
          ),
          Divider(thickness: 1.0),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            title: Row(
              children: <Widget>[
                Icon(Icons.verified_user),
                SizedBox(
                  width:
                      12, // here put the desired space between the icon and the text
                ),
                Text("সিন্ডিকেট"),
                // here we could use a column widget if we want to add a subtitle
              ],
            ),
          ),
          Divider(thickness: 1.0),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            title: Row(
              children: <Widget>[
                Icon(Icons.bakery_dining_outlined),
                SizedBox(
                  width:
                      12, // here put the desired space between the icon and the text
                ),
                Text("একাডেমিক কাউন্সিল"),
                // here we could use a column widget if we want to add a subtitle
              ],
            ),
          ),

          Divider(thickness: 1.0),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HelpLine()));
            },
            title: Row(
              children: <Widget>[
                Icon(Icons.computer),
                SizedBox(
                  width:
                      12, // here put the desired space between the icon and the text
                ),
                Text("আইসিটি সেল"),
                // here we could use a column widget if we want to add a subtitle
              ],
            ),
          ),
          Divider(thickness: 1.0),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HelpLine()));
            },
            title: Row(
              children: <Widget>[
                Icon(Icons.help_center),
                SizedBox(
                  width:
                      12, // here put the desired space between the icon and the text
                ),
                Text("হেল্পডেস্ক"),
                // here we could use a column widget if we want to add a subtitle
              ],
            ),
          ),

          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: Icon(Icons.close),
                title: Text('Close'),
                onTap: () {
                  Navigator.of(context).pop();
                  print('Pressed');
                },
                // enabled: false,
                selected: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
