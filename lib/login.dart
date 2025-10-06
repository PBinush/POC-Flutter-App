import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 917,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 412,
                height: 917,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: -157,
                      top: 0,
                      child: Container(
                        width: 612,
                        height: 389,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/612x389"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 23,
                      top: 22,
                      child: Container(
                        width: 357,
                        height: 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/357x18"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 117,
                      top: 83,
                      child: Container(
                        width: 165,
                        height: 165,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 6.30,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 104,
                      top: 76,
                      child: Container(
                        width: 191,
                        height: 178,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/191x178"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFFFFFFF),
                              blurRadius: 17.80,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: -3,
                      top: 349,
                      child: Container(
                        width: 415,
                        height: 568,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFAFAF9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                              spreadRadius: 5,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 37,
                      top: 472,
                      child: Container(
                        width: 330,
                        height: 55,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: const Color(0xFF374151),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 37,
                      top: 554,
                      child: Container(
                        width: 330,
                        height: 55,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: const Color(0xFF374151),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 51,
                      top: 561,
                      child: SizedBox(
                        width: 86,
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: const Color(0xFF6B7280),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 482,
                      child: SizedBox(
                        width: 118,
                        child: Text(
                          'User name',
                          style: TextStyle(
                            color: const Color(0xFF6B7280),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 37,
                      top: 680,
                      child: Container(
                        width: 330,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF355E3B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x4C000000),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 3,
                              offset: Offset(0, 1),
                              spreadRadius: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 152,
                      top: 696.50,
                      child: SizedBox(
                        width: 92,
                        height: 23.83,
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 66,
                      top: 848,
                      child: SizedBox(
                        width: 183,
                        child: Text(
                          'Don’t have Account?',
                          style: TextStyle(
                            color: const Color(0xFF6B7280),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 253,
                      top: 848,
                      child: SizedBox(
                        width: 66,
                        child: Text(
                          'Sign up ',
                          style: TextStyle(
                            color: const Color(0xFF3498DB),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 37,
                      top: 764,
                      child: Container(
                        width: 330,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFAFCF9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x4C000000),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 3,
                              offset: Offset(0, 1),
                              spreadRadius: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 118.75,
                      top: 781.21,
                      child: SizedBox(
                        width: 214,
                        height: 20,
                        child: Text(
                          'Continue With Google',
                          style: TextStyle(
                            color: const Color(0xFF111827),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 77,
                      top: 776,
                      child: Container(
                        width: 32.41,
                        height: 32.41,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Stack(),
                      ),
                    ),
                    Positioned(
                      left: 200,
                      top: 629,
                      child: SizedBox(
                        width: 161,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: const Color(0xFF3498DB),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 143,
                      top: 384,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: const Color(0xFF111827),
                          fontSize: 40,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 316,
                      top: 564,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/36x36"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
