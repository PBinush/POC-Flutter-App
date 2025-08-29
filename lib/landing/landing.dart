import 'package:flutter/material.dart';
import '../login.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final features = [
      {
        'icon': Icons.location_on,
        'title': 'Location & Logistics',
        'desc': 'Track tea locations and optimize logistics.'
      },
      {
        'icon': Icons.notifications,
        'title': 'Request & Notification',
        'desc': 'Manage requests and stay updated.'
      },
      {
        'icon': Icons.star,
        'title': 'Review & Rating',
        'desc': 'Rate and review suppliers and collectors.'
      },
      {
        'icon': Icons.payment,
        'title': 'Payments & Billing',
        'desc': 'Handle payments, advances, and billing.'
      },
      {
        'icon': Icons.inventory,
        'title': 'Supplies Availability',
        'desc': 'Monitor tea supply and availability.'
      },
      {
        'icon': Icons.report,
        'title': 'Issue Reporting',
        'desc': 'Report issues and ensure accountability.'
      },
      {
        'icon': Icons.language,
        'title': 'Localization',
        'desc': 'Accessible in multiple languages.'
      },
      {
        'icon': Icons.school,
        'title': 'Education & Community',
        'desc': 'Learn and connect with the tea community.'
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.green[100],
                    child: Icon(Icons.local_cafe, color: Colors.green[700], size: 32),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Tea Management App',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                ],
              ),
            ),
            // Hero Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Text(
                    'Smart Tea Management Made Simple',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Empowering suppliers, factories, collectors, and farmers to manage operations efficiently. Connect, track, and grow your tea business with ease.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Icon(Icons.emoji_nature, size: 80, color: Colors.green[300]),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: 180,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Features Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: features.length,
                itemBuilder: (context, index) {
                  final feature = features[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(feature['icon'] as IconData, size: 36, color: Colors.green[600]),
                          const SizedBox(height: 12),
                          Text(
                            feature['title'] as String,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green[800],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            feature['desc'] as String,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
            // Footer
            Container(
              color: Colors.green[50],
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                children: [
                  Text(
                    'Contact: info@teamanagement.com',
                    style: TextStyle(color: Colors.green[700], fontSize: 15),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Terms & Conditions',
                    style: TextStyle(color: Colors.grey[700], fontSize: 13),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: Colors.green[400], size: 22),
                      const SizedBox(width: 12)
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text('© 2025 Tea Management App', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
