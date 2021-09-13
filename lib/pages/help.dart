import 'package:flutter/material.dart';
import 'package:stokey_fe/pages/Stokey.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
          "Help",
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '    What issues are you facing?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 0.5, fontSize: 16),
                      )),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Stokey()));
                      },
                                      child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                 child: Text('IAM UNABLE TO LOGIN TO MY ACCOUNT', style: TextStyle(fontWeight: FontWeight.bold),)),
                                 SizedBox(height:08),
                              Text('You can recover your password using the Forgot password link in the login page. If you are still unable to access your account, then please call our customer care.', style: TextStyle(color: Colors.grey[600]),
                              )]
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Stokey()));
                      },
                                      child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                 child: Text('IAM UNABLE TO PAY USIN WALLET', style: TextStyle(fontWeight: FontWeight.bold),)),
                                 SizedBox(height:08),
                              Text('Sorry you are facing issues with payment by wallet. Please use CONTACT US option to send us relevant information to help you.', style: TextStyle(color: Colors.grey[600]),
                              )]
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Stokey()));
                      },
                                      child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                 child: Text('MY ORDER DIDNT GET PLACED, BUT PAYMENT GOT DEBITED', style: TextStyle(fontWeight: FontWeight.bold),)),
                                 SizedBox(height:08),
                              Text('We are sorry that your order didnt go through successfully but you need not worry at all. The amount debited from ypur bank/card account will be automatically refunded within 7-10 working days.', style: TextStyle(color: Colors.grey[600]),
                              )]
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Stokey()));
                      },
                                      child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                 child: Text('IAM UNABLE TO USE COUPONS', style: TextStyle(fontWeight: FontWeight.bold),)),
                                 SizedBox(height:08),
                              Text('Sorry you are facing issues with Coupons. Please use CONTACT US option to send us relevant information to help you.', style: TextStyle(color: Colors.grey[600]),
                              )]
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Stokey()));
                      },
                                      child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                 child: Text('MY PAYMENT HAS BEEN DEBITED MULTIPLE TIMES', style: TextStyle(fontWeight: FontWeight.bold),)),
                                 SizedBox(height:08),
                              Text('We are sorry that your payment got debited multiple times.The extra amount debited from your bank/card  account will be automatically  refunded within 7-10 working days.', style: TextStyle(color: Colors.grey[600]),
                              )]
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Stokey()));
                      },
                                      child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                 child: Text('IAM UNABLE TO PAY USING WALLET', style: TextStyle(fontWeight: FontWeight.bold),)),
                                 SizedBox(height:08),
                              Text('Sorry you are facing issues with payment by wallet. Please use CONTACT US option to send us relevant information to help you.', style: TextStyle(color: Colors.grey[600]),
                              )]
                          ),
                        ),
                      ),
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
