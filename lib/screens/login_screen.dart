import 'package:auth_screens_challenge/screens/sign_up_screen.dart';
import 'package:auth_screens_challenge/widgets/form_field.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: loginPurpleGradient),
          child: Column(
            children: [
              Image.asset(
                'assets/images/person_&_dog.png',
              ),
              Text('Welcome Back!',
                  style: Theme.of(context).textTheme.headline6),
              SizedBox(
                height: 15,
              ),
              Text('Please, Log In.',
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextInputFormField(
                      textInput: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'johnsondoe@nomail.com',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            icon: Image.asset(USER),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextInputFormField(
                      textInput: TextFormField(
                        // keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: '*********************',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            icon: Image.asset(KEY),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.only(left: 70, right: 70),
                      decoration: BoxDecoration(
                        color: loginDarkPurple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: 70.0,
                        onPressed: () {},
                        child: Text(
                          'Continue > ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '-----------------------',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Or',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '-----------------------',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 70, right: 70),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow()],
                  color: signupDarkPurple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.5,
                  height: 70.0,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignUpScreen()));
                  },
                  textColor: Colors.white,
                  child: Text(
                    'Create an Account',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
