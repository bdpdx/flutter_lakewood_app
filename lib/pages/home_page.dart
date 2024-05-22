import 'package:flutter/material.dart';
import 'package:flutter_lakewood_app/pages/list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the list page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListPage()),
            );
          },
          child: const Text('Go to List Page'),
        ),
      ),
    );
  }
}
