import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget {
  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/arrowleft.png"),
          onPressed: () => Navigator.of(context).pop("Categories"),
        ),
        title: Text(
          "Track Your Orders",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
              child: Stack(children: [
          Container(
            height: size.height * 0.08,
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
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Deliver',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Name",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Vijesh",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Contact",
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 40),
                              Text(
                                "9539309653",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Order",
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                "12546",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Date",
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 40),
                              Text(
                                "27/12/21",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Time",
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 40),
                              Text(
                                "4.30pm",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 80, top: 50),
                          width: 2,
                          height: 0.48,
                          color: Colors.grey,
                        ),
                        Column(
                          children: [
                            statusWidget("Order Confirmed", true,
                                'Your order for item no.12554\nhas been confirmed'),
                            statusWidget("Processing", false,
                                'Your order for item no.12554\nis on process'),
                            statusWidget("Packed", false,
                                "Your order for item no.12554\nhas packed"),
                            statusWidget("Shipped", false,
                                "Your order for item no.12554\nhas shipped to the given\ndelivery address"),
                            statusWidget("Delivered", false,
                                "item has delivered\nsuccessfully"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

Container statusWidget(String status, bool isActive, String title) {
  
  
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Row(
      children: [
        SizedBox(width: 20),
        Text('12/12/20'),
        Container(
          height: 25,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (isActive) ? Color(0xffAE1D3D) : Colors.white,
              border: Border.all(
                  color: (isActive) ? Colors.transparent : Color(0xffAE1D3D),
                  width: 2)),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              status,
              style: TextStyle(
                  color: (isActive) ? Color(0xffAE1D3D) : Colors.black),
            ),
            Text(
              title,
              style: TextStyle(
                  color: (isActive) ? Color(0xffAE1D3D) : Colors.black),
            ),
          ],
        )
      ],
    ),
  );
}
