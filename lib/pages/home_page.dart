import 'package:flutter/material.dart';
import 'package:flutter_lakewood_app/pages/list_page.dart';
import 'package:flutter_lakewood_app/styles/button_styles.dart';
import 'package:flutter_lakewood_app/styles/text_styles.dart';
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
            Column(
              children: [
                const Spacer(flex: 5),
                Expanded(
                  flex: 5,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text(
                          'Get ready for',
                          style: TextStyles.homePageHeadline,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Lake Oswego',
                          style: TextStyles.homePageTitle,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Enjoy this immersive and refreshing way to explore Lake Oswego through our new mobile app',
                          style: TextStyles.homePageSubtitle,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {
                            // Navigate to ListPage when the button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ListPage()),
                            );
                          },
                          style: ButtonStyles.homePageButton,                     
                          child: const Text('Go to List Page'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
