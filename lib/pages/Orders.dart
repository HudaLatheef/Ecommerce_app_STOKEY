import 'package:flutter/material.dart';

import 'package:stokey_fe/pages/OrderDetails.dart';
import 'package:stokey_fe/pages/TrcakOrder.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
            "Orders",
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xffD63027),
                  const Color(0xffD63027),
                  const Color(0xffAE1D3D),
                  const Color(0xff8E0F50),
                ],
              ),
            ),
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
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(245, 245, 245, 50),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0),
                    // ),

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  // GestureDetector(
                                  //   child: Image.asset('assets/carrot.png'),
                                  //   onTap: (){},
                                  //   ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Ink(
                                                decoration:
                                                    const ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: BeveledRectangleBorder(
                                                    side: BorderSide(
                                                        color:
                                                            Color(0xffAE1D3D)),
                                                  ),
                                                ),
                                                child: IconButton(
                                                  iconSize: 50.0,
                                                  icon: Image.asset(
                                                    "assets/carrot.png",
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        left: 10,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: IconButton(
                                              iconSize: 50.0,
                                              icon: Image.asset(
                                                "assets/carrot.png",
                                              ),
                                              onPressed: () =>
                                                  Navigator.of(context).pop(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 20,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: IconButton(
                                                iconSize: 50.0,
                                                icon: Image.asset(
                                                  "assets/eggplant.png",
                                                ),
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 40,
                                        left: 0,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: IconButton(
                                                iconSize: 50.0,
                                                icon: Image.asset(
                                                  "assets/Chocolate.png",
                                                ),
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:3.0, right: 1),
                                    child: Column(
                                      children: [
                                        Text(
                                          '4+',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height: size.height * 0.05,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              ' Eggplant, broccoli',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text('•Ordered on 20th Sept 2020'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xffAE1D3D),
                                  ),
                                  onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderDetails()),
            );
          },
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: GestureDetector(
                      onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackOrder()));
                        },
                                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(8),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                const Color(0xffD63027),
                                const Color(0xffD63027),
                                const Color(0xffAE1D3D),
                                const Color(0xff8E0F50),
                              ],
                            )),
                        height: size.height * 0.03,
                        width: size.width * 0.30,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Track your order',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(245, 245, 245, 50),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0),
                    // ),

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  // GestureDetector(
                                  //   child: Image.asset('assets/carrot.png'),
                                  //   onTap: (){},
                                  //   ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Ink(
                                                decoration:
                                                    const ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: BeveledRectangleBorder(
                                                    side: BorderSide(
                                                        color:
                                                            Color(0xffAE1D3D)),
                                                  ),
                                                ),
                                                child: IconButton(
                                                  iconSize: 50.0,
                                                  icon: Image.asset(
                                                    "assets/carrot.png",
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        left: 10,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: IconButton(
                                              iconSize: 50.0,
                                              icon: Image.asset(
                                                "assets/carrot.png",
                                              ),
                                              onPressed: () =>
                                                  Navigator.of(context).pop(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 20,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: IconButton(
                                                iconSize: 50.0,
                                                icon: Image.asset(
                                                  "assets/ladyfinger.png",
                                                ),
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 40,
                                        left: 0,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: IconButton(
                                                iconSize: 50.0,
                                                icon: Image.asset(
                                                  "assets/garlic.jpeg",
                                                ),
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:3.0, right: 1),
                                    child: Column(
                                      children: [
                                        Text(
                                          '4+',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height: size.height * 0.05,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              ' Garlic, Carrot',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text('•Ordered on 20th Sept 2020'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xffAE1D3D),
                                  ),
                                 onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderDetails()),
            );
          },
                                )]
                            ),
                          ),
                        ]),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              const Color(0xffD63027),
                              const Color(0xffD63027),
                              const Color(0xffAE1D3D),
                              const Color(0xff8E0F50),
                            ],
                          )),
                      height: size.height * 0.03,
                      width: size.width * 0.30,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Track your order',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(245, 245, 245, 50),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0),
                    // ),

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  // GestureDetector(
                                  //   child: Image.asset('assets/carrot.png'),
                                  //   onTap: (){},
                                  //   ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Ink(
                                                decoration:
                                                    const ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: BeveledRectangleBorder(
                                                    side: BorderSide(
                                                        color:
                                                            Color(0xffAE1D3D)),
                                                  ),
                                                ),
                                                child: IconButton(
                                                  iconSize: 50.0,
                                                  icon: Image.asset(
                                                    "assets/carrot.png",
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        left: 10,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: IconButton(
                                              iconSize: 50.0,
                                              icon: Image.asset(
                                                "assets/carrot.png",
                                              ),
                                              onPressed: () =>
                                                  Navigator.of(context).pop(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 20,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: IconButton(
                                                iconSize: 50.0,
                                                icon: Image.asset(
                                                  "assets/tomato.png",
                                                ),
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 40,
                                        left: 0,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: IconButton(
                                                iconSize: 50.0,
                                                icon: Image.asset(
                                                  "assets/broccoli.png",
                                                ),
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:3.0, right: 1),
                                    child: Column(
                                      children: [
                                        Text(
                                          '4+',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height: size.height * 0.05,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              ' Broccoli, Carrot',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text('•Delivered 20th Sept 2020'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xffAE1D3D),
                                  ),
                                  onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderDetails()),
            );
          },
                                 ) ],
                            ),
                          ),
                        ]),
                  ),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(245, 245, 245, 50),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0),
                    // ),

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  // GestureDetector(
                                  //   child: Image.asset('assets/carrot.png'),
                                  //   onTap: (){},
                                  //   ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Ink(
                                                decoration:
                                                    const ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: BeveledRectangleBorder(
                                                    side: BorderSide(
                                                        color:
                                                            Color(0xffAE1D3D)),
                                                  ),
                                                ),
                                                child: IconButton(
                                                  iconSize: 50.0,
                                                  icon: Image.asset(
                                                    "assets/carrot.png",
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        left: 10,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: IconButton(
                                              iconSize: 50.0,
                                              icon: Image.asset(
                                                "assets/carrot.png",
                                              ),
                                              onPressed: () =>
                                                  Navigator.of(context).pop(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 20,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: IconButton(
                                                iconSize: 50.0,
                                                icon: Image.asset(
                                                  "assets/broccoli.png",
                                                ),
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 0,
                                        child: Container(
                                          child: Ink(
                                            decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: BeveledRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffAE1D3D)),
                                              ),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: IconButton(
                                                iconSize: 50.0,
                                                icon: Image.asset(
                                                  "assets/tomato.png",
                                                ),
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:3.0, right: 1),
                                    child: Column(
                                      children: [
                                        Text(
                                          '4+',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height: size.height * 0.05,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              ' Tomato, Carrot',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text('•Delivered on 20/9/20'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xffAE1D3D),
                                  ),
                                 onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderDetails()),
            );
          },
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  
                ],
              ),
            )
          ])
        ])));
  }
}
