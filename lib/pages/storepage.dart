import 'dart:ui';

import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/arrowleft.png"),
          onPressed: () => Navigator.of(context).pop("Categories"),
        ),
        title: Text(
          "BigKMart",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset("assets/wishlistfilled.png"),
            onPressed: () => Navigator.of(context).pop('wishlist'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.25,
              width: size.width * 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/kmart.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BigKMart',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Supermaret'),
                    ],
                  ),
                  Icon(Icons.share),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 22.0, right: 22, top: 8, bottom: 8),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffD63027),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, right: 12, top: 7, bottom: 7),
                        child: Text(
                          ' 4.3⛤',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('98 People rated'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ABOUT',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      )),
                  SizedBox(height: 5),
                  Text(
                      'BigKMart is a very famous supermaret located in kakkand kerala and have branches all over kerala. They are famous in their service and quality of the product. Their products are one among the best selling products in India.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, top: 10, right: 22),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'OPENING HOURS',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Open Now',
                              style: TextStyle(
                                color: const Color(0xffD63027),
                              ),
                            ),
                            Text('(08:00-22:00)')
                          ],
                        )
                      ],
                    ),
                    VerticalDivider(color: Colors.grey, thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              border:
                                  Border.all(color: Colors.grey[500], width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.favorite),
                            )),
                        SizedBox(width: 7),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              border:
                                  Border.all(color: Colors.grey[500], width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.comment),
                            )),
                        SizedBox(width: 7),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              border:
                                  Border.all(color: Colors.grey[500], width: 2),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.call,
                                ))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ADDRESS',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8),
                          Text('1124, Old church street(250m)'),
                        ],
                      ),
                      Text(
                        'Get direction',
                        style: TextStyle(
                          color: const Color(0xffD63027),
                        ),
                      )
                    ],
                  ),
                ),
                ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      end: Alignment.topCenter,
                      begin: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/loc.png',
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
