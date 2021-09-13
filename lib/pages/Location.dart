import 'package:flutter/material.dart';
class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
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
            "Location",
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
                hintText: 'Search an area or locality ',
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20.0, top: 8),
                child: Row(
                  children: [
                    Icon(Icons.location_searching),
                    Text(' Use my current location', style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:12.0, top: 15),
                child: Row(
                  children: [
                    Text('Nearby locations', style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:12.0, top: 15),
                child: Row(
                  children: [
                    Icon(Icons.location_on),

                    Expanded(
                      child: Text('ez-basket online supermarket, Infopark Phase 2, Kochi', style: TextStyle(fontSize: 16),)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:12.0, top: 15),
                child: Row(
                  children: [
                    Icon(Icons.location_on),

                    Expanded(
                      child: Text('Codemeric Infotech Pvt ltd 17A2, Transasia, Infopark Phase 2, Kochi', style: TextStyle(fontSize: 16),)),
                  ],
                ),
              )
            ],
          )

           ],
         ), 
        ),
    );
  }
}