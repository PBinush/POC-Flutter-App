import 'package:flutter/material.dart';
import 'landing/landing.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    final email = _emailController.text.trim();
    final password = _passwordController.text;
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both email and password')),
      );
      return;
    }
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LandingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Top green curved container with tea logo
              Stack(
                children: [
                  ClipPath(
                    clipper: _BottomCurveClipper(),
                    child: Container(
                      height: size.height * 0.4,
                      width: double.infinity,
                      color: Colors.green[700],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Tea logo/image placeholder
                          Padding(
                            padding: const EdgeInsets.only(top: 32.0),
                            child: Image.asset(
                              'assets/tea_logo.png',
                              height: 80,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) => Icon(Icons.local_drink, color: Colors.white, size: 80),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'TEA POT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'Connect with tea collectors across Sri Lanka. Manage your tea supply, track payments, and grow your business.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    // Email TextField
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.green[700]),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                    SizedBox(height: 16),
                    // Password TextField
                    TextField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.green[700]),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword ? Icons.visibility_off : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.green[700]),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _login,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // Divider with OR
                    Row(
                      children: [
                        Expanded(child: Divider(thickness: 1)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('OR', style: TextStyle(color: Colors.grey)),
                        ),
                        Expanded(child: Divider(thickness: 1)),
                      ],
                    ),
                    SizedBox(height: 16),
                    // Google Sign-In Button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/google_logo.png',
                          height: 24,
                          errorBuilder: (context, error, stackTrace) => Icon(Icons.login, color: Colors.red),
                        ),
                        label: Text(
                          'Continue With Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    // Sign up link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? ", style: TextStyle(color: Colors.grey[700])),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.green[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    // Footer version text
                    Text(
                      'V 1.0.0',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(height: 16),
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

// Custom clipper for curved bottom edge
class _BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2, size.height,
      size.width, size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
