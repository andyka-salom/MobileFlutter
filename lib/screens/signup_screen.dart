import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_screen.dart';
import 'package:talentproject/widgets/customloginform.dart'; 
import 'package:talentproject/widgets/buttonlogin.dart'; 

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;


    final double topPadding = screenSize.height * 0.1;
    final double horizontalPadding = screenSize.width * 0.040;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgbiru.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: topPadding,
              horizontal: horizontalPadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/logosignup.svg',
                  height: 50,
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                CustomLoginForm( 
                  hintText: 'Username',
                ),
                SizedBox(height: 20),
                CustomLoginForm( 
                  hintText: 'Email',
                ),
                SizedBox(height: 20),
                CustomLoginForm( 
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ButtonLogin( 
                  text: 'Signup',
                  onPressed: () {},
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Already have an account? Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 80),
                Image.asset(
                  'assets/images/title2.png',
                  height: 150, // Adjusted height of the image
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
