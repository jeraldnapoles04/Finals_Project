import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Top Section with Background Image
          Expanded(
            flex: 3,
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Background image
                Image.asset(
                  'assets/images/background.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
                // Overlay with Welcome text
                Container(
                  color: Colors.black.withOpacity(0.4), // Dark overlay
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, top: 175), // Adjust padding for spacing
                    child: Align(
                      alignment: Alignment.topLeft, // Align to the top-left
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffdbd8d8),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bottom Section with Login Form
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white, // Black background
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70), // Circular curve on top-right
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Username field
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffdbd8d8),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Color(0xff332f2f)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  // Password field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffdbd8d8),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color(0xff332f2f)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  // Login button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Additional options
                  TextButton(
                    onPressed: () {
                      // Forgot password action
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color(0xff332f2f)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Sign-up action
                    },
                    child: Text.rich(
                      TextSpan(
                        text: "Don't have an account? ", // Regular text
                        style: TextStyle(
                          color:
                              Color(0xff332f2f), // Color for the regular text
                          fontSize: 12.5,
                        ),
                        children: [
                          TextSpan(
                            text: "Signup", // Bold text
                            style: TextStyle(
                              fontWeight: FontWeight.bold, // Make it bold
                              color: Color(
                                  0xff332f2f), // Ensure the same color is applied
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
