import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/images/logo.png',
              height: 280,
            ),
            Text(
              "Just Do It",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 20, left: 20, right: 20),
              child: const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 24,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 121),
                  child: Text(
                      "Shop Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
