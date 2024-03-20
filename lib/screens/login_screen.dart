import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'signup_screen.dart';
import 'package:talentproject/widgets/customloginform.dart'; 
import 'package:talentproject/widgets/buttonlogin.dart'; 

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgbiru.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: 160.0,
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/logologin.svg',
                    height: 60,
                    color: Colors.white,
                  ),
                  SizedBox(height: 30),
                  CustomLoginForm( 
                    hintText: 'Username',
                  ),
                  SizedBox(height: 20),
                  CustomLoginForm( 
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ButtonLogin( 
                    text: 'Login',
                    onPressed: () {},
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text(
                      "Don't have an account yet? Register",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 60),
                  Image.asset(
                    'assets/images/title2.png',
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
