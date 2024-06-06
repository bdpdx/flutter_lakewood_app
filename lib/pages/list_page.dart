import 'package:flutter/material.dart';
import 'package:flutter_lakewood_app/pages/detail_page.dart';
import 'package:flutter_lakewood_app/styles/app_colors.dart';
import 'package:flutter_lakewood_app/styles/text_styles.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore Lake Oswego',
          style: TextStyles.appBarTitle,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear, color: Colors.grey),
                    onPressed: () {
                      // Add functionality to clear the text field
                    },
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                ),
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyles.listPageSectionHeading,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: OutlinedButton(
                      onPressed: () {
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: index == 0 ? AppColors.darkGreen : Colors.transparent,
                        side: BorderSide(
                          color: index == 0 ? AppColors.darkGreen : Colors.grey,
                          width: 1.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // Pill shape
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        minimumSize: const Size(0, 30),
                      ),
                      child: Text(
                        'Button ${index + 1}',
                        style: TextStyle(
                          color: index == 0? Colors.white : Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  );
                }),
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
      ),
    );
  }
}
