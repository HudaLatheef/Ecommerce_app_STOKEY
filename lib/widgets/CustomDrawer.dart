import 'package:flutter/material.dart';
import 'package:stokey_fe/pages/AboutUs.dart';
import 'package:stokey_fe/pages/HomeScreen.dart';
import 'package:stokey_fe/pages/Orders.dart';
import 'package:stokey_fe/pages/RateUs.dart';
import 'package:stokey_fe/pages/cart.dart';
import 'package:stokey_fe/pages/help.dart';
import 'package:stokey_fe/pages/notification.dart';

import 'package:stokey_fe/pages/settings.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  const Color(0xffD63027),
                  const Color(0xffD63027),
                  const Color(0xffAE1D3D),
                  const Color(0xff8E0F50),
                ],
              ),
            ),
            // ignore: missing_required_param
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: missing_required_param
                Image.asset(
                  "assets/stokey.png",
                  width: size.width * 0.5,
                ),
                Divider(color: Colors.white, thickness: 2),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '  Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  // textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Account'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text('Orders'),
            onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Orders()));
                      },
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: Text('My Cart'),
            onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cart()));
                      },
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Notifications()));
                      },
          ),
          Divider(color: Colors.black),
          SizedBox(height: 40),
          ListTile(
            leading: Icon(Icons.brightness_low),
            title: Text('Settings'),
           onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Settings()));
                      },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('feedback'),
            onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Notifications()));
                      },
          ),
          ListTile(
            leading: Icon(Icons.warning_amber_rounded),
            title: Text('About Us'),
            onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AboutUs()));
                      },
          ),
          ListTile(
            leading: Icon(Icons.star_half),
            title: Text('Rate Us'),
           onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => RateUs()));
                      },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Help()));
                      },
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
