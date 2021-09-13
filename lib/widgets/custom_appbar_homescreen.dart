import 'package:flutter/material.dart';
import 'package:stokey_fe/widgets/CustomDrawer.dart';

class CustomAppBarHome extends StatefulWidget {
  @override
  _CustomAppBarHomeState createState() => _CustomAppBarHomeState();
}

class _CustomAppBarHomeState extends State<CustomAppBarHome> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Image.asset("assets/stokeyimage_drawer.png"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CustomDrawer()));
        },
      ),
      title: IconButton(
        iconSize: 100.0,
        icon: Image.asset(
          "assets/stokeyimage_logo.png",
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: [
        IconButton(
          icon: Image.asset("assets/stokeyimage_wishlist.png"),
          onPressed: () => Navigator.of(context).pop('wishlist'),
        ),
      ],
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }
}
