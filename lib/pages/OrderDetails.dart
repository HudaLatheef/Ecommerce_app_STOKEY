import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  bool _checkboxValue = false;
  int _n = 0;
  
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
          "Order Details",
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
        child: Container(
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ordered on 20-Sep-2020',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Time: IST 14:02',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Re-Order',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _checkboxValue = !_checkboxValue;
                            });
                          },
                          // ignore: missing_required_param
                          child: Checkbox(
                            value: _checkboxValue,
                            checkColor: Colors.black,
                            activeColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color.fromRGBO(245, 245, 245, 30),
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
                                  Container(
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        color: Colors.white,
                                        shape: BeveledRectangleBorder(
                                          side: BorderSide(
                                              color: Color(0xffAE1D3D)),
                                        ),
                                      ),
                                      child: IconButton(
                                        iconSize: 30.0,
                                        icon: Image.asset(
                                          "assets/carrot.png",
                                        ),
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(08.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Carrot',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          '₹30/kg',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.5),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '(Quantity)',
                                      style: TextStyle(),
                                    ),
                                    SizedBox(height: 07),
                                    Container(
                                      child: Container(
                                        height: 25,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            MaterialButton(
                                              minWidth: 01,
                                              onPressed: minus,
                                              child: Container(
                                                child: new Icon(Icons.remove,
                                                    color: Colors.white,
                                                    size: 18),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            05.0),
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
                                            new Text('$_n',
                                                style: new TextStyle(
                                                    fontSize: 20.0)),
                                            MaterialButton(
                                              minWidth: 01,
                                              onPressed: add,
                                              child: Container(
                                                child: new Icon(Icons.add,
                                                    color: Colors.white,
                                                    size: 18),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            05.0),
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
                                      ),
                                    ),
                                    // Row(
                                    //   children:<Widget> [
                                    //     Text('+'),
                                    //     Text('5'),
                                    //   ],
                                    // ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        '₹160',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _checkboxValue = !_checkboxValue;
                                          });
                                        },
                                        // ignore: missing_required_param
                                        child: Checkbox(
                                          value: _checkboxValue,
                                          checkColor: Colors.black,
                                          activeColor: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color.fromRGBO(245, 245, 245, 30),
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
                                  Container(
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        color: Colors.white,
                                        shape: BeveledRectangleBorder(
                                          side: BorderSide(
                                              color: Color(0xffAE1D3D)),
                                        ),
                                      ),
                                      child: IconButton(
                                        iconSize: 30.0,
                                        icon: Image.asset(
                                          "assets/carrot.png",
                                        ),
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(08.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Carrot',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          '₹30/kg',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.5),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '(Quantity)',
                                      style: TextStyle(),
                                    ),
                                    SizedBox(height: 07),
                                    Container(
                                      child: Container(
                                        height: 25,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            MaterialButton(
                                              minWidth: 01,
                                              onPressed: minus,
                                              child: Container(
                                                child: new Icon(Icons.remove,
                                                    color: Colors.white,
                                                    size: 18),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            05.0),
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
                                            new Text('$_n',
                                                style: new TextStyle(
                                                    fontSize: 20.0)),
                                            MaterialButton(
                                              minWidth: 01,
                                              onPressed: add,
                                              child: Container(
                                                child: new Icon(Icons.add,
                                                    color: Colors.white,
                                                    size: 18),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            05.0),
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
                                      ),
                                    ),
                                    // Row(
                                    //   children:<Widget> [
                                    //     Text('+'),
                                    //     Text('5'),
                                    //   ],
                                    // ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        '₹160',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _checkboxValue = !_checkboxValue;
                                          });
                                        },
                                        // ignore: missing_required_param
                                        child: Checkbox(
                                          value: _checkboxValue,
                                          checkColor: Colors.black,
                                          activeColor: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color.fromRGBO(245, 245, 245, 30),
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
                                  Container(
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        color: Colors.white,
                                        shape: BeveledRectangleBorder(
                                          side: BorderSide(
                                              color: Color(0xffAE1D3D)),
                                        ),
                                      ),
                                      child: IconButton(
                                        iconSize: 30.0,
                                        icon: Image.asset(
                                          "assets/carrot.png",
                                        ),
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(08.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Carrot',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          '₹30/kg',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.5),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '(Quantity)',
                                      style: TextStyle(),
                                    ),
                                    SizedBox(height: 07),
                                    Container(
                                      child: Container(
                                        height: 25,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            MaterialButton(
                                              minWidth: 01,
                                              onPressed: minus,
                                              child: Container(
                                                child: new Icon(Icons.remove,
                                                    color: Colors.white,
                                                    size: 18),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            05.0),
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
                                            new Text('$_n',
                                                style: new TextStyle(
                                                    fontSize: 20.0)),
                                            MaterialButton(
                                              minWidth: 01,
                                              onPressed: add,
                                              child: Container(
                                                child: new Icon(Icons.add,
                                                    color: Colors.white,
                                                    size: 18),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            05.0),
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
                                      ),
                                    ),
                                    // Row(
                                    //   children:<Widget> [
                                    //     Text('+'),
                                    //     Text('5'),
                                    //   ],
                                    // ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        '₹160',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _checkboxValue = !_checkboxValue;
                                          });
                                        },
                                        // ignore: missing_required_param
                                        child: Checkbox(
                                          value: _checkboxValue,
                                          checkColor: Colors.black,
                                          activeColor: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color.fromRGBO(245, 245, 245, 30),
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
                                  Container(
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        color: Colors.white,
                                        shape: BeveledRectangleBorder(
                                          side: BorderSide(
                                              color: Color(0xffAE1D3D)),
                                        ),
                                      ),
                                      child: IconButton(
                                        iconSize: 30.0,
                                        icon: Image.asset(
                                          "assets/carrot.png",
                                        ),
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(08.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Carrot',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          '₹30/kg',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.5),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '(Quantity)',
                                      style: TextStyle(),
                                    ),
                                    SizedBox(height: 07),
                                    Container(
                                      child: Container(
                                        height: 25,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            MaterialButton(
                                              minWidth: 01,
                                              onPressed: minus,
                                              child: Container(
                                                child: new Icon(Icons.remove,
                                                    color: Colors.white,
                                                    size: 18),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            05.0),
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
                                            new Text('$_n',
                                                style: new TextStyle(
                                                    fontSize: 20.0)),
                                            MaterialButton(
                                              minWidth: 01,
                                              onPressed: add,
                                              child: Container(
                                                child: new Icon(Icons.add,
                                                    color: Colors.white,
                                                    size: 18),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            05.0),
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
                                      ),
                                    ),
                                    // Row(
                                    //   children:<Widget> [
                                    //     Text('+'),
                                    //     Text('5'),
                                    //   ],
                                    // ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        '₹160',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _checkboxValue = !_checkboxValue;
                                          });
                                        },
                                        // ignore: missing_required_param
                                        child: Checkbox(
                                          value: _checkboxValue,
                                          checkColor: Colors.black,
                                          activeColor: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: 300),
                Divider(
                  color: Colors.grey[300],
                  indent: 20,
                  endIndent: 20,
                  thickness: 2.5,
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.50,
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Grand Total :  "),
                        Text(
                          '₹50.00',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(199, 41, 48, 200),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )),
        height: size.height * 0.08,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: size.height * 0.04,
                width: size.width * 0.30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Color(0xffAE1D3D),
                      width: 3,
                    )
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    'TRACK ORDER',
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
                    borderRadius: BorderRadius.circular(3),
                    
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
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
