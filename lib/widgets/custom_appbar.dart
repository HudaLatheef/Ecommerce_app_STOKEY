import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  CustomAppBar({@required this.title});
  @override
  CustomAppBarState createState() => CustomAppBarState();
}

class CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      backgroundColor: Colors.grey[200],
      centerTitle: true,
      title: Text(
        widget.title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            height: 1,
            fontSize: 30,
            color: Color(0xff145d7c)),
      ),
    );
  }
}
