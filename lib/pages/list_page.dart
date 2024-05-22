import 'package:flutter/material.dart';
import 'package:flutter_lakewood_app/pages/detail_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate back to the previous screen using Navigator.pop
                Navigator.pop(context);
              },
              child: const Text('Back to Home Page'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to NewScreen2 using Navigator.push
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage()),
                );
              },
              child: const Text('Go to Detail Page'),
            ),
          ],
        ),
      ),
    );
  }
}
