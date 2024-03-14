import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_screen.dart'; // Import file login_screen.dart

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white, 
          body: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/bgbiru.png', 
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25, 
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 100),
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          SvgPicture.asset(
                            'assets/svgs/logo.svg',
                            height: 30,
                            color: Colors.white, 
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Image.asset(
                        'assets/images/logoawal.png',
                        height: 300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()), // Mengarahkan ke LoginScreen
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade900,
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Image.asset(
                        'assets/images/Title.png',
                        height: 140,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// LoginPage widget definition goes here
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Build your login page UI here
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Text('Login Page'),
      ),
    );
  }
}
