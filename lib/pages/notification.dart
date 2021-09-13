import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool _containsData = true;
  @override
  Widget build(BuildContext context) {
    if(_containsData){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/arrowleft.png"),
          onPressed: () => Navigator.of(context).pop("Categories"),
        ),
        title: Text(
          "Notification",
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(
                          "assets/carrot.png",
                        )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Carrot, Capsicum', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text('Product delivered', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        SizedBox(height:05),
                         Text('Order with order number 12515 has been delivered successfully\nby time:4.00pm 23rd oif june 2020 by delivery staff named\n Vishnu.', style: TextStyle(fontSize: 10, color: Colors.grey,)),
                        
                      ]

                    )
                        
                  ],
                ),
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(
                          "assets/carrot.png",
                        )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Carrot, Capsicum', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text('Product delivered', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        SizedBox(height:05),
                         Text('Order with order number 12515 has been delivered successfully\nby time:4.00pm 23rd oif june 2020 by delivery staff named\n Vishnu.', style: TextStyle(fontSize: 10, color: Colors.grey,)),
                        
                      ]

                    )
                        
                  ],
                ),
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(
                          "assets/carrot.png",
                        )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Carrot, Capsicum', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text('Product delivered', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        SizedBox(height:05),
                         Text('Order with order number 12515 has been delivered successfully\nby time:4.00pm 23rd oif june 2020 by delivery staff named\n Vishnu.', style: TextStyle(fontSize: 10, color: Colors.grey,)),
                        
                      ]

                    )
                        
                  ],
                ),
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(
                          "assets/carrot.png",
                        )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Carrot, Capsicum', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text('Product delivered', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        SizedBox(height:05),
                         Text('Order with order number 12515 has been delivered successfully\nby time:4.00pm 23rd oif june 2020 by delivery staff named\n Vishnu.', style: TextStyle(fontSize: 10, color: Colors.grey,)),
                        
                      ]

                    )
                        
                  ],
                ),
                
              ),
            ),
          ),
          ElevatedButton(onPressed: () {setState(() {
            _containsData = !_containsData;
          });}, child: Text("No"))
          
        ]),
      ),
    );
  }
  else{
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/arrowleft.png"),
          onPressed: () => Navigator.of(context).pop("Categories"),
        ),
        title: Text(
          "Notification",
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
              padding: const EdgeInsets.only(top:150.0,left:30, right: 30 ),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/RateUs.png')),
            ),
            SizedBox(height:20),
            Text(' Nothing here', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height:08),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Text('your notification page is empty. Once you have any notification it will appear here  ', style:TextStyle(color:Colors.grey)),
            ),
          ]
        ),
      ),
      
    );
  }
}
}