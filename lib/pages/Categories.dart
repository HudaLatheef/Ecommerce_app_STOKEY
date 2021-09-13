import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
            "Categories",
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
          child: Stack(children: [
            Container(
              height: 50,
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(245, 245, 245, 1),
                ),
                child: Column(
                  // physics: NeverScrollableScrollPhysics(),
                  children: [
                    Row(
                      children: [
                        CourseCard(
                          "Vegetables ",
                          "200",
                          "assets/vegetable.png",
                        ),
                        CourseCard("  Fruits ", "200", "assets/fruits.png"),
                        CourseCard(
                            "Electroncs ", "200", "assets/Electronic.png"),
                      ],
                    ),
                    Row(
                      children: [
                        CourseCard("Cosmetics", "200",
                            "assets/Health and beauty.png"),
                        CourseCard(
                            "Chocolate ", "200", "assets/Chocolate.png"),
                        CourseCard("Groceries ", "200", "assets/Grocerys.png"),
                      ],
                    ),
                    Row(
                      children: [
                        CourseCard(
                          "Vegetables ",
                          "200",
                          "assets/vegetable.png",
                        ),
                        CourseCard("  Fruits ", "200", "assets/fruits.png"),
                        CourseCard(
                            "Electroncs ", "200", "assets/Electronic.png"),
                      ],
                    ),
                    Row(
                      children: [
                        CourseCard("Cosmetics", "200",
                            "assets/Health and beauty.png"),
                        CourseCard(
                            "Chocolate ", "200", "assets/Chocolate.png"),
                        CourseCard("Groceries ", "200", "assets/Grocerys.png"),
                      ],
                    ),
                    Row(
                      children: [
                        CourseCard(
                          "Vegetables ",
                          "200",
                          "assets/vegetable.png",
                        ),
                        CourseCard("  Fruits ", "200", "assets/fruits.png"),
                        CourseCard(
                            "Electroncs ", "200", "assets/Electronic.png"),
                      ],
                    ),
                    Row(
                      children: [
                        CourseCard("Cosmetics", "200",
                            "assets/Health and beauty.png"),
                        CourseCard(
                            "Chocolate ", "200", "assets/Chocolate.png"),
                        CourseCard("Groceries ", "200", "assets/Grocerys.png"),
                      ],
                    ),

                    // CourseCard(
                    //     " Cosmetics", "200", "assets/Health and beauty.png"),
                    // CourseCard(" Chocolate ", "200", "assets/Chocolate.png"),
                    // CourseCard(" Groceries ", "200", "assets//Grocerys.png"),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}

class CourseCard extends StatelessWidget {
  final String title, count, imagePath;
  // final Function press;

  CourseCard(
    this.title,
    this.count,
    this.imagePath,
    // this.press,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GestureDetector(
        // onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 97.0,
              width: 91,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: <BoxShadow>[
                  //   BoxShadow(
                  //       color: Colors.grey,
                  //       blurRadius: 15.0,
                  //       offset: Offset(0.75, 0.95))
                  // ],
                  color: Color.fromRGBO(199, 41, 48, 200)),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                '$title',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,

                    // letterSpacing: 0.7,
                    fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
