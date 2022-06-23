import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/registration.dart';
import 'package:flutter_app/themehelper.dart';
import 'package:flutter_app/products.dart';






class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 1, 20, 10),
                    margin: EdgeInsets.fromLTRB(
                        20, 10, 20, 10), // This will be the login form
                    child: Column(
                      children: [
                       
                        Text(
                          'Signin into your account',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 30.0),
                         Column(
                                children: [
                                  Container(
                                    child: TextFormField(
                                     

                                      decoration: ThemeHelper()
                                          .textInputDecoration('Username',
                                              'Enter your Username'),
                                    ),
                                    decoration:
                                        ThemeHelper().inputBoxDecorationShaddow(),
                                  ),
                                  SizedBox(height: 30.0),
                                  Container(
                                    child: TextField(


                                      obscureText:true,
                                      decoration: ThemeHelper()
                                          .textInputDecoration(
                                              'Password', 'Enter your password'),
                                    ),
                                    decoration:
                                        ThemeHelper().inputBoxDecorationShaddow(),
                                  ),
                                  SizedBox(height: 15.0),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      onTap: () {
                          
                                      },
                                      child: Text(
                                        "Forgot your password?",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: ThemeHelper()
                                        .buttonBoxDecoration(context),
                                    child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child: Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(40, 10, 40, 10),
                                          child: Text(
                                            'Sign In'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      productspage()));

                                        },
                                    )                                    
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                    //child: Text('Don\'t have an account? Create'),
                                    child: Text.rich(TextSpan(children: [
                                      TextSpan(text: "Don\'t have an account? "),
                                      TextSpan(
                                        text: 'Create',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RegistrationPage()));
                                          },
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            // color: Theme.of(context).accentColor
                                        ),
                                      ),
                                    ])),
                                  ),
                                ],
                              ),
                        
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
