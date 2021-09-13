import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:stokey_fe/pages/Categories.dart';

class RateUs extends StatefulWidget {
  @override
  _RateUsState createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Image.asset("assets/arrowleft.png"),
            onPressed: () => Navigator.of(context).pop("Categories"),
          ),
          title: Text(
            "Rate Us",
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
            Padding(
              padding: const EdgeInsets.only(top:30.0, ),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/RateUs.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0, right: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(245, 245, 245, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text('Rate Us Your Opinion', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 ),),
                      SizedBox(height:20),
                      Text('Please give your opinion about stokey and rate us ', style: TextStyle(color: Colors.grey[600]),),
                      
                      Padding(
                        padding: const EdgeInsets.only(top:30.0,bottom: 30),
                        child: SmoothStarRating(
                                                    allowHalfRating: false,
                                                    onRated: (v) {},
                                                    starCount: 5,
                                                    rating: 3,
                                                    size: 60.0,
                                                    isReadOnly: true,
                                                    filledIconData: Icons.star,
                                                    halfFilledIconData: Icons.star_half,
                                                    defaultIconData: Icons.star_border,
                                                    color: Colors.amber[300],
                                                    borderColor: Colors.grey,
                                                    spacing: 0.0),
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Categories()));
                            },
                            textColor: Colors.white,
                            padding: const EdgeInsets.all(0.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            child: Container(
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      const Color(0xffD63027),
                                      const Color(0xffD63027),
                                      const Color(0xffAE1D3D),
                                      const Color(0xff8E0F50),
                                    ],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.0))),
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: const Text(
                                'SUBMIT',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                    ]
                  ),
                ),
                
              ),
            )
            ]
          ),

        ),
      
    );
  }
}