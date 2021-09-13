import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:stokey_fe/pages/BigKMart.dart';
import 'package:stokey_fe/pages/storepage.dart';

class NearbyShops extends StatefulWidget {
  @override
  _NearbyShopsState createState() => _NearbyShopsState();
}

class _NearbyShopsState extends State<NearbyShops> {
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
          "Nearby Shops",
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
            GestureDetector(
              onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StorePage()));
                        },
                          child: Container(
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey[200], width: 2),
                              color: Colors.grey[200]
                ),
                height: size.height * 0.36,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                  children: [
                  Container(
                    height: size.height * 0.25,
                    width: size.width * 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/kmart.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0, top: 5,),
                    child: Column(
                    
                    children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('BIG K Mart',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                      Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Supermarket\n 4.3⛤',)),
                    ],
                    ),
                  ),
                  ]
                )),
              ),
            ), 
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Categories',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey[200], width: 2),
                          ),
                          child: IconButton(
                            icon: Image.asset("assets/fruits1.jpg"),
                            onPressed: () => Navigator.of(context).pop("Categories"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('Fruits'),
                        ),
                      ],
                    ),
                    
                    SizedBox(width:8),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey[200], width: 2),
                          ),
                          child: IconButton(
                            icon: Image.asset("assets/clothing3.png"),
                            onPressed: () => Navigator.of(context).pop("Categories"),
                          ),
                        ),
                        Text('Clothing'),
                      ],
                    ),
                    SizedBox(width:8),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey[200], width: 2),
                          ),
                          child: IconButton(
                            icon: Image.asset("assets/veg2.png"),
                           onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BigKMart()),
                );
              },
                          ),
                        ),
                        Text('vegetables'),
                      ],
                    ),
                    SizedBox(width:8),
                    Column(
                      children: [
                        Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[200], width: 2),
                        ),
                        child: IconButton(
                          icon: Image.asset("assets/cosmetics2.jpg"),
                          onPressed: () => Navigator.of(context).pop("Categories"),
                        ),
                  ),
                  Text('Cosmetics'),
                      ],
                    ),
                  SizedBox(width:8),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[200], width: 2),
                        ),
                        child: IconButton(
                          icon: Image.asset("assets/electro2.png"),
                          onPressed: () => Navigator.of(context).pop("Categories"),
                        ),
                      ),
                      Text('Electronics'),
                    ],
                  ),
                  SizedBox(width:8),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[200], width: 2),
                        ),
                        child: IconButton(
                          icon: Image.asset("assets/groceries1.png"),
                          onPressed: () => Navigator.of(context).pop("Categories"),
                        ),
                      ),
                      Text('Groceries'),
                    ],
                  ),
                  SizedBox(width:8),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[200], width: 2),
                        ),
                        child: IconButton(
                          icon: Image.asset("assets/meat2.jpg"),
                          onPressed: () => Navigator.of(context).pop("Categories"),
                        ),
                      ),
                      Text('Meat'),
                    ],
                  ),
                  SizedBox(width:8),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[200], width: 2),
                        ),
                        child: IconButton(
                          icon: Image.asset("assets/dairy2.png"),
                          onPressed: () => Navigator.of(context).pop("Categories"),
                        ),
                      ),
                      Text('Dairy Products')
                    ],
                  ),
                  SizedBox(width:8),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[200], width: 2),
                        ),
                        child: IconButton(
                          icon: Image.asset("assets/fruits1.jpg"),
                          onPressed: () => Navigator.of(context).pop("Categories"),
                        ),
                      ),
                      Text('Fruits')
                    ],
                  ),
                  SizedBox(width:8),

                  ],
                ),
              ),
            ),
              Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 2000,
              width: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Color.fromRGBO(245, 245, 245, 1),
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Column(
                      children: [
                        Row(
                         
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            SizedBox(width: 20),
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
                                        child: Image.asset('assets/carrot.png',
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
                                                 Text('carrot',
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
                          ]),
                        SizedBox(height:10),
                        Row(
                         
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        child: Image.asset('assets/broccoli.png',
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
                                                 Text('Broccoli',
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
                            SizedBox(width: 20),
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
                                        child: Image.asset('assets/garlic.jpeg',
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
                                                 Text('Garlic',
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
                          ]),
                          SizedBox(height: 10),
                        Row(
                         
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        child: Image.asset('assets/ladyfinger.png',
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
                                                 Text('Lady Finger',
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
                            SizedBox(width: 20),
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
                                        child: Image.asset('assets/eggplant.png',
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
                                                 Text('Egg Plant',
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
                          ]),
                          SizedBox(height: 10),
                          Row(
                         
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            SizedBox(width: 20),
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
                                        child: Image.asset('assets/carrot.png',
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
                                                 Text('carrot',
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
                          ]),
                        SizedBox(height:10),
                        Row(
                         
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        child: Image.asset('assets/broccoli.png',
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
                                                 Text('Broccoli',
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
                            SizedBox(width: 20),
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
                                        child: Image.asset('assets/garlic.jpeg',
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
                                                 Text('Garlic',
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
                          ]),
                          SizedBox(height: 10),
                        Row(
                         
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        child: Image.asset('assets/ladyfinger.png',
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
                                                 Text('Lady Finger',
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
                            SizedBox(width: 20),
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
                                        child: Image.asset('assets/eggplant.png',
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
                                                 Text('Egg Plant',
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
                          ]),
                          SizedBox(height: 10),
                          Row(
                         
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            SizedBox(width: 20),
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
                                        child: Image.asset('assets/carrot.png',
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
                                                 Text('carrot',
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
                          ]),
                        SizedBox(height:10),
                        Row(
                         
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        child: Image.asset('assets/broccoli.png',
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
                                                 Text('Broccoli',
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
                            SizedBox(width: 20),
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
                                        child: Image.asset('assets/garlic.jpeg',
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
                                                 Text('Garlic',
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
                          ]),
                          SizedBox(height: 10),
                        Row(
                         
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        child: Image.asset('assets/ladyfinger.png',
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
                                                 Text('Lady Finger',
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
                            SizedBox(width: 20),
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
                                        child: Image.asset('assets/eggplant.png',
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
                                                 Text('Egg Plant',
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
                          ]),
                          SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
             )) ]
        ),
      ),
    );
  }
}
