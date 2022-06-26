import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  @override
  final Size preferredSize;

  CustomAppBar(
    this.title, {
    Key? key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            color: Color.fromARGB(255, 242, 239, 239),
            fontFamily: 'Nikosh',
            fontSize: 23.0,
            fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.teal,
    );
  }
}
