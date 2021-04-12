import 'package:flutter/material.dart';
import 'package:shopping_app_ui_challenge/login_page.dart';

class RegistrationPage extends StatelessWidget {
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
                children: [
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
                  inputField("Name", Icons.person_outline),
                  inputField("E-mail ID", Icons.email_outlined),
                  inputField("Mobile Number", Icons.phone),
                  passwordInputField("Password", Icons.lock),
                  passwordInputField("Confirm Password", Icons.lock),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage(),
                      ),
                    ),
                    child: Container(
                      width: w * 0.9,
                      height: 50,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        color: Colors.orange[400],
                        child: Center(
                          child: Text(
                            "REGISTER",
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
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text.rich(
                      TextSpan(
                        text: "Already have an account?",
                        children: [
                          TextSpan(
                            text: "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget inputField(String title, IconData icon) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 5, left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: title,
          // icon: Icon(Icons.person),
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }

  Widget passwordInputField(String title, IconData icon) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 5, left: 20, right: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: title,
            // icon: Icon(Icons.person),
            prefixIcon: Icon(icon),
            suffixIcon: Icon(Icons.visibility)),
      ),
    );
  }
}
