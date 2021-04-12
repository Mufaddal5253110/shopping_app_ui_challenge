import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List cardList = [
    Item1(),
    Item1(),
    Item1(),
    Item1(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.7,
                    viewportFraction: 1,

                    // autoPlay: true,
                    // autoPlayInterval: Duration(seconds: 3),
                    // autoPlayAnimationDuration: Duration(milliseconds: 800),
                    // autoPlayCurve: Curves.fastOutSlowIn,
                    // pauseAutoPlayOnTouch: true,
                    // aspectRatio: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: cardList.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          elevation: 0,
                          color: Colors.white,
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.6,
                  left: MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(cardList, (index, url) {
                      return Container(
                        width: _currentIndex == index ? 20.0 : 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: _currentIndex == index
                              ? Colors.grey
                              : Colors.grey[300],
                        ),
                      );
                    }),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 30,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  ),
                ),
                Positioned(
                  top: 110,
                  right: 30,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Eyevy",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 5),
              alignment: Alignment.topLeft,
              child: Text(
                "Full Rim Round, Cat-eyed Anti Glare Frame (48 mm)",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              alignment: Alignment.topLeft,
              child: Text.rich(
                TextSpan(
                  text: "₹219  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  children: [
                    TextSpan(
                      text: "₹999",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: "  78% off",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ]),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 60,
                    child: Card(
                      elevation: 0,
                      child: Center(
                        child: Text(
                          "ADD TO CART",
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 60,
                    child: Card(
                      color: Colors.orangeAccent,
                      elevation: 0,
                      child: Center(
                        child: Text(
                          "BUY NOW",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //       stops: [
      //         0.3,
      //         1
      //       ],
      //       colors: [
      //         Color(0xffff4000),
      //         Color(0xffffcc66),
      //       ]),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/specs.png',
            height: 300.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
