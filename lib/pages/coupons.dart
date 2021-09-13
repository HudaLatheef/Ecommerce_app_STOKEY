import 'package:flutter/material.dart';

class Coupons extends StatefulWidget {
  @override
  _CouponsState createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
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
            "Coupons",
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
            child: Column(children: [
          Stack(children: [
            Container(
              height: size.height * 0.20,
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
              padding: const EdgeInsets.all(50.0),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      '1586.50',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 06),
                    Text(
                      'Total Earned STOKEY Points',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: Column(
                children:[
                 Container(
                   height:30,
                   color: Colors.orange[100],
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Points Earned'),
                          Tab(
                        icon: new Image.asset("assets/coins.png"),
                      ),
                       ],
                     ),
                   ),
                 ) ,
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Refer and Earn'),
                           Text(':    ₹500', style: TextStyle( color: Color(0xffAE1D3D),),),
                         ],
                       ),
                       SizedBox(height: 08),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Above ₹1500 Purchase'),
                           Text(':  ₹6000', style: TextStyle( color: Color(0xffAE1D3D),),),
                         ],
                       ),
                       
                     ],
                   ),
                 ),
                 Divider(color: Colors.grey[300], height: 40,thickness:3, indent: 150),
                 Padding(
                   padding: const EdgeInsets.only(right:16.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('Total Points : '),
                       Text('₹50,000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
                     ],
                   ),
                 ),
                ]

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: Column(
                children:[
                 Container(
                   height:30,
                   color: Colors.orange[100],
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Points Earned'),
                          Tab(
                        icon: new Image.asset("assets/coins.png"),
                      ),
                       ],
                     ),
                   ),
                 ) ,
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Refer and Earn'),
                           Text(':    ₹500', style: TextStyle( color: Color(0xffAE1D3D),),),
                         ],
                       ),
                       SizedBox(height: 08),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Above ₹1500 Purchase'),
                           Text(':  ₹6000', style: TextStyle( color: Color(0xffAE1D3D),),),
                         ],
                       ),
                       
                     ],
                   ),
                 ),
                 Divider(color: Colors.grey[300], height: 40,thickness:3, indent: 150),
                 Padding(
                   padding: const EdgeInsets.only(right:16.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('Total Points : '),
                       Text('₹50,000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
                     ],
                   ),
                 ),
                ]

              ),
            ),
          ),
          
          
        ])));
  }
}
