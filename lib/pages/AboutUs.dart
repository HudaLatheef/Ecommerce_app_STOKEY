import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
          "About Us",
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height:70,
                
                
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/stokeyimage_logo.png')
                  ),
                  
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:18.0, right: 18, bottom: 12),
              child: Container(
                child: Text('Nancy Laura Stokey (born May 8, 1950) is the Frederick Henry Prince Distinguished Service Professor of Economics at the University of Chicago since 1990 and focuses particularly on mathematical economics while recently conducting research about Growth Theory, economic dynamics, and fiscal/monetary policy.[2][3] She earned her BA in economics from the University of Pennsylvania in 1972 and her PhD from Harvard University in 1978, under the direction of thesis advisor Kenneth Arrow. She is a Fellow of the Econometric Society, the American Academy of Arts and Sciences and the National Academy of Sciences. She previously served as a co editor of Econometrica and was a member of the Expert Panel of the Copenhagen Consensus. She received her Honorary Doctor of Laws (L.L.D) in 2012 from the University of Western Ontario.[2] Much of her work has been done by digesting economic dynamics, which most of this work is done as an expositor.[4] She spent a great deal of time recently researching growth theory, economic dynamics, as well as fiscal and monetary policy.[4] ', style: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}