import 'package:flutter/material.dart';

class Stokey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xffD63027),
              const Color(0xffD63027),
              const Color(0xffAE1D3D),
              const Color(0xff8E0F50),
            ],
          )),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // ignore: missing_required_param
                Container(
                  height: 400,
                  width: 400,
                  // ignore: missing_required_param
                  child: IconButton(
                    icon: Image.asset(
                      "assets/stokey.png",
                    ),
                  ),
                ),
              ])),
    );
  }
}
