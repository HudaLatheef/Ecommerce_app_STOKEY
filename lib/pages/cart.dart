import 'package:flutter/material.dart';
import 'dart:ui';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/arrowleft.png"),
          onPressed: () => Navigator.of(context).pop("Categories"),
        ),
        title: Text(
          "Cart",
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
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text(
                'free delivery for purchase of ₹600 onwards',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(245, 245, 245, 1),
                ),
                child: Column(
                  children: [
                    Dismissible(
                      key: UniqueKey(),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        
                       
                      ),
                      secondaryBackground:  Container(
                        
                        alignment: Alignment.centerRight,
                        color: Color(0xffD63027),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            'Delete',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onDismissed: (DismissDirection direction){
                        // ignore: unused_local_variable
                        String actoin = direction== DismissDirection.endToStart
                        ?"Delete":
                        // ignore: deprecated_member_use
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Item deleted'),
                          
                        ));
                        
                      },
                      
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(08.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 60,
                                      width: 60,
                                      child: Image.asset(
                                        "assets/tomato.png",
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 6.0, top: 6, bottom: 6),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Tomato',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green[800],
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10,
                                                top: 2,
                                                bottom: 2),
                                            child: Text(
                                              '₹50.00',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      '10% off',
                                      style: TextStyle(
                                          color: Colors.green[800],
                                          fontSize: 10),
                                      textAlign: TextAlign.end,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '(Quantity)',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    child: Row(
                                      children: [
                                        MaterialButton(
                                          minWidth: 0.1,
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
                                            style:
                                                new TextStyle(fontSize: 15.0)),
                                        MaterialButton(
                                          minWidth: 0.1,
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
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                    Dismissible(
                      key: UniqueKey(),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        
                       
                      ),
                      secondaryBackground:  Container(
                        
                        alignment: Alignment.centerRight,
                        color: Color(0xffD63027),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            'Delete',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onDismissed: (DismissDirection direction){
                        // ignore: unused_local_variable
                        String actoin = direction== DismissDirection.endToStart
                        ?"Delete":
                        // ignore: deprecated_member_use
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Item deleted'),
                          
                        ));
                        
                      },

                                          child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(08.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 60,
                                      width: 60,
                                      child: Image.asset(
                                        "assets/carrot.png",
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 6.0, top: 6, bottom: 6),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Carrot',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green[800],
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10,
                                                top: 2,
                                                bottom: 2),
                                            child: Text(
                                              '₹60.00',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      '10% off',
                                      style: TextStyle(
                                          color: Colors.green[800], fontSize: 10),
                                      textAlign: TextAlign.end,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '(Quantity)',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    child: Row(
                                      children: [
                                        MaterialButton(
                                          minWidth: 0.1,
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
                                          minWidth: 0.1,
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
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                    Dismissible(
                      key: UniqueKey(),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        
                       
                      ),
                      secondaryBackground:  Container(
                        
                        alignment: Alignment.centerRight,
                        color: Color(0xffD63027),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            'Delete',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onDismissed: (DismissDirection direction){
                        // ignore: unused_local_variable
                        String actoin = direction== DismissDirection.endToStart
                        ?"Delete":
                        // ignore: deprecated_member_use
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Item deleted'),
                          
                        ));
                        
                      },
                                          child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(08.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 60,
                                      width: 60,
                                      child: Image.asset(
                                        "assets/eggplant.png",
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 6.0, top: 6, bottom: 6),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Egg plant',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green[800],
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10,
                                                top: 2,
                                                bottom: 2),
                                            child: Text(
                                              '₹50.00',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      '10% off',
                                      style: TextStyle(
                                          color: Colors.green[800], fontSize: 10),
                                      textAlign: TextAlign.end,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '(Quantity)',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    child: Row(
                                      children: [
                                        MaterialButton(
                                          minWidth: 0.1,
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
                                          minWidth: 0.1,
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
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 20,
              width: 500,
              color: Colors.pink[100],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10),
                    child: Text(
                      'Total Rewards Balance',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Tab(
                      icon: new Image.asset("assets/coins.png"),
                    ),
                  ),
                  Text('120'),
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
            Container(
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Payment Details',
                    ),
                  ),
                  Divider(color: Colors.grey[300], thickness: 2, height: 5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total'),
                        Text('₹50.00'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Discount'),
                        Text('₹50.00'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal'),
                        Text('₹50.00'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Shipping Charges'),
                        Text('₹50.00'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Points'),
                        Text('₹50.00'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Coupon'),
                        Text('₹50.00'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Grand Total',
                          style: TextStyle(),
                        ),
                        Text('₹50.00'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
