// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HallList extends StatelessWidget {
  List<String> hall_names = [
    'আলাওল হল',
    'এ ফ রহমান হল',
    'সোহরাওয়ার্দী হল',
    'শাহ আমানত হল',
    'শামসুন নাহার হল',
    'শহীদ আব্দুর রব হল',
    'প্রীতিলতা হল',
    'দেশনেত্রী বেগম খালেদা জিয়া হল',
    'মাস্টারদা সূর্যসেন হল',
    'শেখ মুজিবুর রহমান হল',
    'জননেত্রী শেখ হাসিনা হল',
    'বঙ্গমতা শেখ ফজিলতুনেছা হল',
    'শিল্পী রশিদ চৌধুরী হল'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView.builder(
        itemCount: hall_names.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
                title: Row(
                  children: <Widget>[
                    Icon(Icons.home),
                    SizedBox(
                      width:
                          12, // here put the desired space between the icon and the text
                    ),
                    Text(hall_names[index],
                        style: TextStyle(
                          fontFamily: 'Nikosh',
                          fontSize: 22.0,
                        ))
                    // here we could use a column widget if we want to add a subtitle
                  ],
                ),
              ),
              Divider(thickness: 1.0),
            ],
          );
        },
      ),
    ));
  }
}
