import 'dart:ui';
import 'package:http/http.dart' as http;

import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:stokey_fe/pages/Categories.dart';
import 'package:stokey_fe/pages/Items.dart';
import 'package:stokey_fe/pages/OrderDetails.dart';
import 'package:stokey_fe/pages/Orders.dart';
import 'package:stokey_fe/pages/Stokey.dart';
import 'package:stokey_fe/pages/TrcakOrder.dart';
import 'package:stokey_fe/pages/cart.dart';
import 'package:stokey_fe/pages/coupons.dart';
import 'package:stokey_fe/pages/httpservice.dart';
// import 'package:stokey_fe/pages/httpservice.dart';
import 'package:stokey_fe/pages/location.dart';
import 'package:stokey_fe/pages/nearbyshops.dart';
import 'package:stokey_fe/pages/product.dart';
// import 'package:stokey_fe/pages/productt.dart';
import 'package:stokey_fe/widgets/CustomDrawer.dart';
// import 'package:stokey_fe/widgets/custom_appbar_homescreen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<http.Response> fetchAlbum() {
  return http.get(Uri.parse('https://stokey.shop/api/merchants/all'));
}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                icon: Image.asset("assets/stokeyimage_drawer.png"),
                onPressed: () => Scaffold.of(context).openDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
            title: IconButton(
              iconSize: 100.0,
              icon: Image.asset(
                "assets/stokeyimage_logo.png",
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Stokey()),
                );
              },
            ),
            actions: [
              IconButton(
                icon: Image.asset("assets/stokeyimage_wishlist.png"),
                onPressed: () => Navigator.of(context).pop('wishlist'),
              ),
            ],
            backgroundColor: Colors.white,
            centerTitle: true,
          )),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                color: const Color(0xffD63027),
                padding: EdgeInsets.only(
                    top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
                height: 60,
                child: new TextField(
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                          right: 4.0, top: 2, bottom: 2, left: 2.0),
                      child: SizedBox(
                        width: 64.0,
                        // ignore: deprecated_member_use
                        child: FlatButton(
                            onPressed: () {},
                            child: Center(
                              child: Icon(
                                Icons.search,
                                size: 32,
                                color: Colors.black,
                              ),
                            )),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search ',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.w600),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(08.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Stokey()));
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.red, width: 2),
                            image: DecorationImage(
                              image: AssetImage("assets/10.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Coupons()));
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.red, width: 2),
                            image: DecorationImage(
                              image: AssetImage("assets/11.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Items()));
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.red, width: 2),
                            image: DecorationImage(
                              image: AssetImage("assets/12.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackOrder()));
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.red, width: 2),
                            image: DecorationImage(
                              image: AssetImage("assets/13.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderDetails()));
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.red, width: 2),
                            image: DecorationImage(
                              image: AssetImage("assets/14.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Orders()));
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.red, width: 2),
                            image: DecorationImage(
                              image: AssetImage("assets/10.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Product()));
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.red),
                            image: DecorationImage(
                              image: AssetImage("assets/11.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Cart()));
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.red, width: 2),
                            image: DecorationImage(
                              image: AssetImage("assets/12.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
               
                child: CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/slide 01.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/slide 02.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            image: AssetImage("assets/slide 03.png"),
                            fit: BoxFit.fill),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/slide 04.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/slide 05.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 21 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 1.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 20, bottom: 20),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Nearby Shops',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              // ignore: missing_required_param
                              IconButton(
                                iconSize: 10.0,
                                icon: Image.asset(
                                  "assets/location.jpg",
                                ),
                              ),
                              Text('Kakkanad'),

                              GestureDetector(
                                 onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Location()));
                                      },
                                                              child: Column(
                                  children: [
                                    SizedBox(height: 03),
                                    DropdownButton(
                                      items: null,
                                      onChanged: null,
                                      iconSize: 30,
                                      
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Divider(
                        height: 3,
                        thickness: 1.5,
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 233,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 7.0, top: 7, bottom: 7),
                                        child: GestureDetector(
                                          onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NearbyShops()));
                        },
                                          
                                                                                  child: Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 20,
                                                      color: Colors.black
                                                          .withOpacity(0.2),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(8.0),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/bismi.jpg"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 7),
                                              Container(child: Text('Bismi•500m'))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/wemart.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('mart•1km')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/metfresh.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('fresh•1.2km')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 7.0, top: 7, bottom: 7),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/mymarket.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('Bismi•500m')
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 7.0, top: 7, bottom: 7),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/gstore.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('Bismi•500m')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/fresh.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('Bismi•500m')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/grenfood.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('green•2km')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 7.0, top: 7, bottom: 7),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/bloomsberry.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('Blooms•3km')
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width:10),
                                Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 7.0, top: 7, bottom: 7),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/bismi.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Container(child: Text('Bismi•500m'))
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/wemart.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('mart•1km')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/metfresh.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('fresh•1.2km')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 7.0, top: 7, bottom: 7),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/mymarket.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('Bismi•500m')
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 7.0, top: 7, bottom: 7),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/gstore.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('Bismi•500m')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/fresh.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('Bismi•500m')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/grenfood.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('green•2km')
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 7.0, top: 7, bottom: 7),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/bloomsberry.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 7),
                                            Text('Blooms•3km')
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NearbyShops()));
                        },
                                child: Icon(Icons.arrow_right,size: 50,color: Colors.grey,)),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 06,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromRGBO(245, 245, 245, 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16,
                          top: 08,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              " Shop By Categories",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w700),
                            ),
                            // ignore: deprecated_member_use
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Categories()));
                              },
                              disabledColor: Colors.grey,
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: const Color(0xffD63027),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: const Text(
                                  'See More',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        indent: 16,
                        endIndent: 16,
                        height: 5,
                        thickness: 2,
                      ),
                      Container(
                        height: 130,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            CourseCard(
                              " Vegetables ",
                              "200",
                              "assets/vegetable.png",
                            ),
                            CourseCard(
                                "    Fruits ", "200", "assets/fruits.png"),
                            CourseCard(" Electronics ", "200",
                                "assets/Electronic.png"),
                            CourseCard(" Cosmetics", "200",
                                "assets/Health and beauty.png"),
                            CourseCard(
                                " Chocolate ", "200", "assets/Chocolate.png"),
                            CourseCard(
                                " Groceries ", "200", "assets/Grocerys.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 450,
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromRGBO(245, 245, 245, 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:16.0, right: 16, top: 10 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              " Exclusive Offers For You",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w700),
                            ),
                            // ignore: deprecated_member_use
                            RaisedButton(
                              onPressed: () {},
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: const Color(0xffD63027),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: const Text('See More',
                                    style: TextStyle(fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey[400], indent: 20, endIndent: 20, height: 5,
                      thickness: 1,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: size.height * 0.15,
                                    // decoration: BoxDecoration(
                                    //   borderRadius: BorderRadius.circular(14.0),),

                                    child: Stack(
                                      children: [
                                        Container(
                                          width: size.width * 0.4,
                                          height: size.height * 0.16,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: InkWell(
                                            splashColor:
                                                Colors.blue.withAlpha(30),
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                              ),
                                              width: size.width * 0.2,
                                              height: size.height * 0.10,
                                              child: Image.asset(
                                                'assets/exclusive offer for you 01.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 30.0,
                                          bottom: 00.0,
                                          right: 30,
                                          
                                          child: new Container(
                                            width: 100.0,
                                            height: 30.0,
                                            decoration: new BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                                color: Color(0xff008575)),
                                            child: Center(
                                              child: new Text(
                                                'Shop Now',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    height: size.height * 0.180,
                                    // decoration: BoxDecoration(
                                    //   borderRadius: BorderRadius.circular(14.0),),

                                    child: Stack(
                                      children: [
                                        Container(
                                          width: size.width * 0.4,
                                          height: size.height * 0.16,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: InkWell(
                                            splashColor:
                                                Colors.blue.withAlpha(30),
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                              ),
                                              width: size.width * 0.4,
                                              height: size.height * 0.12,
                                              child: Image.asset(
                                                'assets/exclusive offer for you 02.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 30.0,
                                          bottom: 00.0,
                                          right: 30,
                                          child: new Container(
                                            width: 100.0,
                                            height: 30.0,
                                            decoration: new BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                                color: Color(0xffFE3A2A)),
                                            child: Center(
                                              child: new Text(
                                                'Shop Now',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 28),
                              Row(
                                children: [
                                  Container(
                                    height: size.height * 0.180,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: size.width * 0.4,
                                          height: size.height * 0.16,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: InkWell(
                                            splashColor:
                                                Colors.blue.withAlpha(30),
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                              ),
                                              width: size.width * 0.4,
                                              height: size.height * 0.12,
                                              child: Image.asset(
                                                'assets/exclusive offer for you 03.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 30.0,
                                          bottom: 00.0,
                                          right: 30,
                                          child: new Container(
                                            width: 100.0,
                                            height: 30.0,
                                            decoration: new BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                                color: Color(0xff2D54A5)),
                                            child: Center(
                                              child: new Text(
                                                'Shop Now',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    height: size.height * 0.180,
                                    // decoration: BoxDecoration(
                                    //   borderRadius: BorderRadius.circular(14.0),),

                                    child: Stack(
                                      children: [
                                        Container(
                                          width: size.width * 0.4,
                                          height: size.height * 0.16,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: InkWell(
                                            splashColor:
                                                Colors.blue.withAlpha(30),
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                              ),
                                              width: size.width * 0.4,
                                              height: size.height * 0.12,
                                              child: Image.asset(
                                                'assets/exclusive offer for you 04.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 30.0,
                                          bottom: 00.0,
                                          right: 30,
                                          child: new Container(
                                            width: 100.0,
                                            height: 30.0,
                                            decoration: new BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                                color: Color(0xff3A6201)),
                                            child: Center(
                                              child: new Text(
                                                'Shop Now',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:16.0, right: 16,top: 10, bottom: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              " Best Sellers",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w600),
                            ),
                            // ignore: deprecated_member_use
                            RaisedButton(
                              onPressed: () {},
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: const Color(0xffD63027),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: const Text('See More',
                                    style: TextStyle(fontSize: 12)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(color: Colors.black, indent: 20, endIndent: 20, height: 1,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 200,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: [
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 150,
                                          child: Container(
                                            child: Image.asset(
                                                'assets/Best Sellers.png',
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset(
                                              "assets/heart bottun.png"),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset(
                                              "assets/Group 681.png"),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      top: 153.5,
                                      child: Container(
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            new Text(
                                              ' Item Name',
                                              style: TextStyle(
                                                color: Color(0xffAE1D3D),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SmoothStarRating(
                                                allowHalfRating: false,
                                                onRated: (v) {},
                                                starCount: 5,
                                                rating: 3,
                                                size: 13.0,
                                                isReadOnly: true,
                                                filledIconData: Icons.star,
                                                halfFilledIconData:
                                                    Icons.star_half,
                                                defaultIconData:
                                                    Icons.star_border,
                                                color: Color(0xffAE1D3D),
                                                borderColor: Color(0xffAE1D3D),
                                                spacing: 0.0),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      bottom: 00.0,
                                      right: 0,
                                      child: new Container(
                                        width: 100.0,
                                        height: 30.0,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: <Color>[
                                              const Color(0xffD63027),
                                              const Color(0xffD63027),
                                              const Color(0xffAE1D3D),
                                              const Color(0xff8E0F50),
                                            ],
                                          ),
                                        ),
                                        child: Center(
                                          child: new Text(
                                            '₹ 160.00',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 150,
                                          child: Container(
                                            child: Image.asset(
                                                'assets/Best Sellers.png',
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset(
                                              "assets/stokeyheart bottun.png"),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset(
                                              "assets/Group 681.png"),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      top: 153.5,
                                      child: Container(
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            new Text(
                                              ' Item Name',
                                              style: TextStyle(
                                                color: Color(0xffAE1D3D),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SmoothStarRating(
                                                allowHalfRating: false,
                                                onRated: (v) {},
                                                starCount: 5,
                                                rating: 3,
                                                size: 13.0,
                                                isReadOnly: true,
                                                filledIconData: Icons.star,
                                                halfFilledIconData:
                                                    Icons.star_half,
                                                defaultIconData:
                                                    Icons.star_border,
                                                color: Color(0xffAE1D3D),
                                                borderColor: Color(0xffAE1D3D),
                                                spacing: 0.0),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      bottom: 00.0,
                                      right: 0,
                                      child: new Container(
                                        width: 100.0,
                                        height: 30.0,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: <Color>[
                                              const Color(0xffD63027),
                                              const Color(0xffD63027),
                                              const Color(0xffAE1D3D),
                                              const Color(0xff8E0F50),
                                            ],
                                          ),
                                        ),
                                        child: Center(
                                          child: new Text(
                                            '₹ 160.00',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 150,
                                          child: Container(
                                            child: Image.asset(
                                                'assets/Best Sellers.png',
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset(
                                              "assets/heart bottun.png"),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset(
                                              "assets/Group 681.png"),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      top: 153.5,
                                      child: Container(
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            new Text(
                                              ' Item Name',
                                              style: TextStyle(
                                                color: Color(0xffAE1D3D),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SmoothStarRating(
                                                allowHalfRating: false,
                                                onRated: (v) {},
                                                starCount: 5,
                                                rating: 3,
                                                size: 13.0,
                                                isReadOnly: true,
                                                filledIconData: Icons.star,
                                                halfFilledIconData:
                                                    Icons.star_half,
                                                defaultIconData:
                                                    Icons.star_border,
                                                color: Color(0xffAE1D3D),
                                                borderColor: Color(0xffAE1D3D),
                                                spacing: 0.0),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      bottom: 00.0,
                                      right: 0,
                                      child: new Container(
                                        width: 100.0,
                                        height: 30.0,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: <Color>[
                                              const Color(0xffD63027),
                                              const Color(0xffD63027),
                                              const Color(0xffAE1D3D),
                                              const Color(0xff8E0F50),
                                            ],
                                          ),
                                        ),
                                        child: Center(
                                          child: new Text(
                                            '₹ 160.00',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 150,
                                          child: Container(
                                            child: Image.asset(
                                                'assets/Best Sellers.png',
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset(
                                              "assets/heart bottun.png"),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset(
                                              "assets/Group 681.png"),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      top: 153.5,
                                      child: Container(
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            new Text(
                                              ' Item Name',
                                              style: TextStyle(
                                                color: Color(0xffAE1D3D),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SmoothStarRating(
                                                allowHalfRating: false,
                                                onRated: (v) {},
                                                starCount: 5,
                                                rating: 3,
                                                size: 13.0,
                                                isReadOnly: true,
                                                filledIconData: Icons.star,
                                                halfFilledIconData:
                                                    Icons.star_half,
                                                defaultIconData:
                                                    Icons.star_border,
                                                color: Color(0xffAE1D3D),
                                                borderColor: Color(0xffAE1D3D),
                                                spacing: 0.0),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      bottom: 00.0,
                                      right: 0,
                                      child: new Container(
                                        width: 100.0,
                                        height: 30.0,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: <Color>[
                                              const Color(0xffD63027),
                                              const Color(0xffD63027),
                                              const Color(0xffAE1D3D),
                                              const Color(0xff8E0F50),
                                            ],
                                          ),
                                        ),
                                        child: Center(
                                          child: new Text(
                                            '₹ 160.00',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
  FutureBuilder<List<User>> _buildBody(BuildContext context) {
    final HttpService httpService = HttpService();
    return FutureBuilder<List<User>>(
 
      future: httpService.getPosts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final List<User> posts = snapshot.data;
          return _buildPosts(context, posts);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
  ListView _buildPosts(BuildContext context, List<User> posts) {
    return ListView.builder(
      itemCount: posts.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
            title: Text(
              posts[index].shop_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(posts[index].name.toString()),
          ),
        );
      },
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title, count, imagePath;

  CourseCard(
    this.title,
    this.count,
    this.imagePath,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.white,
                    blurRadius: 15.0,
                    offset: Offset(0.75, 0.95))
              ],
            ),
          ),
          Container(
            child: Text(
              '$title',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                  // letterSpacing: 0.7,
                  fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
