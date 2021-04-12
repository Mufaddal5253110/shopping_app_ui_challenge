import 'package:flutter/material.dart';
import 'package:shopping_app_ui_challenge/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: h * 0.08),
            height: h * 0.92,
            width: w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 30, left: 20),
                    child: Text(
                      "Register in to get started",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      "Experince the all new App!",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "E-mail ID",
                        // icon: Icon(Icons.person),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          // icon: Icon(Icons.person),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 10),
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Use Mobile Number",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: w * 0.025,
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomePage(),
                ),
              ),
              child: Container(
                width: w * 0.95,
                height: 50,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  color: Colors.orange[400],
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
