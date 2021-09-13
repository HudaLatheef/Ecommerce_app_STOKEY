import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int _n = 0;
  int i;
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

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
          "Item",
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
            Stack(children: [
              Container(
                height: 50,
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
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(245, 245, 245, 1),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: CarouselSlider(
                                  items: [
                                    //1st Image of Slider
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        image: DecorationImage(
                                          image:
                                              AssetImage("assets/carrot.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),

                                    //2nd Image of Slider
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/carrot.png"),
                                            fit: BoxFit.fill),
                                      ),
                                    ),

                                    //3rd Image of Slider
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/carrot.png"),
                                            fit: BoxFit.fill),
                                      ),
                                    ),

                                    //4th Image of Slider
                                  ],

                                  //Slider Container properties
                                  options: CarouselOptions(
                                    height: size.height * 0.35,
                                    enlargeCenterPage: true,
                                    autoPlay: false,
                                    aspectRatio: 21 / 9,
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enableInfiniteScroll: true,
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    viewportFraction: 1.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text('Carrot',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '(Quantity)',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      MaterialButton(
                                        minWidth: 05,
                                        onPressed: minus,
                                        child: Container(
                                          child: new Icon(Icons.remove,
                                              color: Colors.white, size: 18),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(05.0),
                                              shape: BoxShape.rectangle,
                                              gradient: LinearGradient(
                                                colors: [
                                                  const Color(0xffD63027),
                                                  const Color(0xffD63027),
                                                  const Color(0xffAE1D3D),
                                                  const Color(0xff8E0F50),
                                                ],
                                              )),
                                        ),
                                      ),
                                      new Text('$_n kg',
                                          style: new TextStyle(fontSize: 15.0)),
                                      MaterialButton(
                                        minWidth: 5,
                                        onPressed: add,
                                        child: Container(
                                          child: new Icon(Icons.add,
                                              color: Colors.white, size: 18),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(05.0),
                                              shape: BoxShape.rectangle,
                                              gradient: LinearGradient(
                                                colors: [
                                                  const Color(0xffD63027),
                                                  const Color(0xffD63027),
                                                  const Color(0xffAE1D3D),
                                                  const Color(0xff8E0F50),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 12.0,
                              ),
                              child: Row(
                                children: [
                                  Text('5.5'),
                                  SmoothStarRating(
                                      allowHalfRating: false,
                                      onRated: (v) {},
                                      starCount: 5,
                                      rating: 3,
                                      size: 20,
                                      isReadOnly: true,
                                      filledIconData: Icons.star,
                                      halfFilledIconData: Icons.star_half,
                                      defaultIconData: Icons.star_border,
                                      color: Color(0xffAE1D3D),
                                      borderColor: Color(0xffAE1D3D),
                                      spacing: 0.0),
                                  Text('ratings'),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey[300],
                              thickness: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green[800],
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12.0, right: 12),
                                            child: Text(
                                              '₹50.00',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: Text(
                                          '10% off',
                                          style: TextStyle(
                                            color: Colors.green[800],
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green[800],
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Available',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                      SizedBox(height: 3),
                                      Text(
                                        'Out of Stock',
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      height: size.height * 0.04,
                                      width: size.width * 0.30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Color(0xffAE1D3D),
                                            width: 1.5,
                                          )),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'ADD TO LIST',
                                          style: TextStyle(
                                            color: Color(0xffAE1D3D),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.04,
                                      width: size.width * 0.30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'ADD TO CART',
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                            icon: Icon(Icons.share),
                                            onPressed: null),
                                        Text(
                                          'Share',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey[300],
                              thickness: 2,
                              indent: 12,
                              endIndent: 12,
                            ),
                            Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height: 60,
                                  child: SingleChildScrollView(
                                      child: Text(
                                          'Carrot, (Daucus carota), herbaceous, generally biennial plant of the Apiaceae family that produces an edible taproot. Among common varieties root shapes range from globular to long, with lower ends blunt to pointed. Besides the orange-coloured roots, white-, yellow-, and purple-fleshed varieties are known.')),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Customer Review',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey[300],
                              thickness: 2,
                              indent: 12,
                              endIndent: 12,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            radius: 30,
                                            backgroundImage: AssetImage(
                                                'assets/profile4.png'),
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          height: 100,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SmoothStarRating(
                                                          allowHalfRating:
                                                              false,
                                                          onRated: (v) {},
                                                          starCount: 5,
                                                          rating: 3,
                                                          size: 20,
                                                          isReadOnly: true,
                                                          filledIconData:
                                                              Icons.star,
                                                          halfFilledIconData:
                                                              Icons.star_half,
                                                          defaultIconData:
                                                              Icons.star_border,
                                                          color:
                                                              Colors.red[200],
                                                          borderColor:
                                                              Colors.red[200],
                                                          spacing: 0.0),
                                                      SizedBox(
                                                        width: 40,
                                                      ),
                                                      Text('10 Oct, 2020')
                                                    ]),
                                                Text('Jane Doe'),
                                                Text(
                                                    'This product is super fresh and felt \nlike bought from an organic store')
                                              ],
                                            ),
                                          ),
                                        ),
                                      ]),
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            radius: 30,
                                            backgroundImage: AssetImage(
                                                'assets/profile3.png'),
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          height: 100,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SmoothStarRating(
                                                          allowHalfRating:
                                                              false,
                                                          onRated: (v) {},
                                                          starCount: 5,
                                                          rating: 4,
                                                          size: 20,
                                                          isReadOnly: true,
                                                          filledIconData:
                                                              Icons.star,
                                                          halfFilledIconData:
                                                              Icons.star_half,
                                                          defaultIconData:
                                                              Icons.star_border,
                                                          color:
                                                              Colors.red[200],
                                                          borderColor:
                                                              Colors.red[200],
                                                          spacing: 0.0),
                                                      SizedBox(
                                                        width: 40,
                                                      ),
                                                      Text('09 Oct, 2020')
                                                    ]),
                                                Text('Felisha'),
                                                Text('Super fresh product')
                                              ],
                                            ),
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Write Review',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    height: size.height * 0.04,
                                    width: size.width * 0.20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
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
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        'SUBMIT',
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 8.0,
                                  left: 13.0,
                                  right: 13.0,
                                  bottom: 20.0),
                              height: 60,
                              child: new TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Type here',
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black45,
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(03.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('   Similar Products',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      IconButton(
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.black),
                          onPressed: null),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 2,
                    indent: 6,
                    endIndent: 6,
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    child:ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Row(
                          children: [
                            Container(
                              
                              
                              child: Container(
                                height: 200,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 145,
                                      child: Container(
                                        color: Colors.white,
                                        child: Image.asset('assets/tomato.png',
                                            fit: BoxFit.contain,),
                                      ),
                                    ),
                                    
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset("assets/heart bottun.png"),
                                          onPressed: () => Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 42,
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:6.0,right: 06),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: <Widget>[
                                                 Text('Tomato',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                  ),
                                                  Text('(1 kg)',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 10,
                                                  ),),
                                                ],
                                              ),
                                            ),
                                            Divider(color: Colors.grey,indent: 05,endIndent: 05,
                                            height: 07),
                                          ],
                                        ),
                                      ),
                                      ),
                                    
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 30,
                                      child: Container(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 05,right: 05),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              
                                              

                                              SmoothStarRating(
                                                  allowHalfRating: false,
                                                  onRated: (v) {},
                                                  starCount: 5,
                                                  rating: 3,
                                                  size: 13.0,
                                                  isReadOnly: true,
                                                  filledIconData: Icons.star,
                                                  halfFilledIconData: Icons.star_half,
                                                  defaultIconData: Icons.star_border,
                                                  color: Color(0xffAE1D3D),
                                                  borderColor: Color(0xffAE1D3D),
                                                  spacing: 0.0),
                                             new Text(
                                                '₹50.00',
                                                style: TextStyle(
                                                  color: Color(0xffAE1D3D),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      right: 0,
                                      bottom: 0,
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
                                            'ADD TO CART',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width:10),
                            Container(
                              
                              
                              child: Container(
                                height: 200,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 145,
                                      child: Container(
                                        color: Colors.white,
                                        child: Image.asset('assets/tomato.png',
                                            fit: BoxFit.contain,),
                                      ),
                                    ),
                                    
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset("assets/heart bottun.png"),
                                          onPressed: () => Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 42,
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:6.0,right: 06),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: <Widget>[
                                                 Text('Tomato',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                  ),
                                                  Text('(1 kg)',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 10,
                                                  ),),
                                                ],
                                              ),
                                            ),
                                            Divider(color: Colors.grey,indent: 05,endIndent: 05,
                                            height: 07),
                                          ],
                                        ),
                                      ),
                                      ),
                                    
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 30,
                                      child: Container(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 05,right: 05),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              
                                              

                                              SmoothStarRating(
                                                  allowHalfRating: false,
                                                  onRated: (v) {},
                                                  starCount: 5,
                                                  rating: 3,
                                                  size: 13.0,
                                                  isReadOnly: true,
                                                  filledIconData: Icons.star,
                                                  halfFilledIconData: Icons.star_half,
                                                  defaultIconData: Icons.star_border,
                                                  color: Color(0xffAE1D3D),
                                                  borderColor: Color(0xffAE1D3D),
                                                  spacing: 0.0),
                                             new Text(
                                                '₹50.00',
                                                style: TextStyle(
                                                  color: Color(0xffAE1D3D),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      right: 0,
                                      bottom: 0,
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
                                            'ADD TO CART',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width:10),
                            Container(
                              
                              
                              child: Container(
                                height: 200,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 145,
                                      child: Container(
                                        color: Colors.white,
                                        child: Image.asset('assets/tomato.png',
                                            fit: BoxFit.contain,),
                                      ),
                                    ),
                                    
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset("assets/heart bottun.png"),
                                          onPressed: () => Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 42,
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:6.0,right: 06),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: <Widget>[
                                                 Text('Tomato',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                  ),
                                                  Text('(1 kg)',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 10,
                                                  ),),
                                                ],
                                              ),
                                            ),
                                            Divider(color: Colors.grey,indent: 05,endIndent: 05,
                                            height: 07),
                                          ],
                                        ),
                                      ),
                                      ),
                                    
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 30,
                                      child: Container(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 05,right: 05),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              
                                              

                                              SmoothStarRating(
                                                  allowHalfRating: false,
                                                  onRated: (v) {},
                                                  starCount: 5,
                                                  rating: 3,
                                                  size: 13.0,
                                                  isReadOnly: true,
                                                  filledIconData: Icons.star,
                                                  halfFilledIconData: Icons.star_half,
                                                  defaultIconData: Icons.star_border,
                                                  color: Color(0xffAE1D3D),
                                                  borderColor: Color(0xffAE1D3D),
                                                  spacing: 0.0),
                                             new Text(
                                                '₹50.00',
                                                style: TextStyle(
                                                  color: Color(0xffAE1D3D),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      right: 0,
                                      bottom: 0,
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
                                            'ADD TO CART',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width:10),
                            Container(
                              
                              
                              child: Container(
                                height: 200,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 145,
                                      child: Container(
                                        color: Colors.white,
                                        child: Image.asset('assets/tomato.png',
                                            fit: BoxFit.contain,),
                                      ),
                                    ),
                                    
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset("assets/heart bottun.png"),
                                          onPressed: () => Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 42,
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:6.0,right: 06),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: <Widget>[
                                                 Text('Tomato',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                  ),
                                                  Text('(1 kg)',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 10,
                                                  ),),
                                                ],
                                              ),
                                            ),
                                            Divider(color: Colors.grey,indent: 05,endIndent: 05,
                                            height: 07),
                                          ],
                                        ),
                                      ),
                                      ),
                                    
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 30,
                                      child: Container(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 05,right: 05),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              
                                              

                                              SmoothStarRating(
                                                  allowHalfRating: false,
                                                  onRated: (v) {},
                                                  starCount: 5,
                                                  rating: 3,
                                                  size: 13.0,
                                                  isReadOnly: true,
                                                  filledIconData: Icons.star,
                                                  halfFilledIconData: Icons.star_half,
                                                  defaultIconData: Icons.star_border,
                                                  color: Color(0xffAE1D3D),
                                                  borderColor: Color(0xffAE1D3D),
                                                  spacing: 0.0),
                                             new Text(
                                                '₹50.00',
                                                style: TextStyle(
                                                  color: Color(0xffAE1D3D),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      right: 0,
                                      bottom: 0,
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
                                            'ADD TO CART',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width:10),
                            Container(
                              
                              
                              child: Container(
                                height: 200,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 145,
                                      child: Container(
                                        color: Colors.white,
                                        child: Image.asset('assets/tomato.png',
                                            fit: BoxFit.contain,),
                                      ),
                                    ),
                                    
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                          icon: Image.asset("assets/heart bottun.png"),
                                          onPressed: () => Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 42,
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:6.0,right: 06),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: <Widget>[
                                                 Text('Tomato',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                  ),
                                                  Text('(1 kg)',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 10,
                                                  ),),
                                                ],
                                              ),
                                            ),
                                            Divider(color: Colors.grey,indent: 05,endIndent: 05,
                                            height: 07),
                                          ],
                                        ),
                                      ),
                                      ),
                                    
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 30,
                                      child: Container(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 05,right: 05),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              
                                              

                                              SmoothStarRating(
                                                  allowHalfRating: false,
                                                  onRated: (v) {},
                                                  starCount: 5,
                                                  rating: 3,
                                                  size: 13.0,
                                                  isReadOnly: true,
                                                  filledIconData: Icons.star,
                                                  halfFilledIconData: Icons.star_half,
                                                  defaultIconData: Icons.star_border,
                                                  color: Color(0xffAE1D3D),
                                                  borderColor: Color(0xffAE1D3D),
                                                  spacing: 0.0),
                                             new Text(
                                                '₹50.00',
                                                style: TextStyle(
                                                  color: Color(0xffAE1D3D),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      right: 0,
                                      bottom: 0,
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
                                            'ADD TO CART',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width:10),
                          ],
                        ),
                      ],


                    ) ,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
