import 'package:flutter/material.dart';
import 'package:flutter_lakewood_app/pages/list_page.dart';
import 'package:flutter_lakewood_app/utilities/bordered.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bordered(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/Photos/Copy of 112 NS Circle.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("Get ready for"),
                  const Text("Lake Oswego"),
                  const Text("Enjoy this immersive and refreshing way to explore Lake Oswego through our new mobile app"),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to ListPage when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListPage()),
                      );
                    },
                    child: const Text('Go to List Page'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
