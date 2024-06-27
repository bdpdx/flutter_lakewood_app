import 'package:flutter/material.dart';
import 'package:flutter_lakewood_app/pages/detail_page.dart';
import 'package:flutter_lakewood_app/styles/app_colors.dart';
import 'package:flutter_lakewood_app/styles/text_styles.dart';
import 'package:flutter_lakewood_app/views/single_home_list_tile.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int _selectedButtonIndex = 0;

  final List _buttonTitles = ['All', 'Historic', 'New', 'Old'];

  final List<String> items = List<String>.generate(20, (index) => 'Item $index');

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
                        setState(() {
                          _selectedButtonIndex = index;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: index == _selectedButtonIndex ? AppColors.darkGreen : Colors.transparent,
                        side: BorderSide(
                          color: index == _selectedButtonIndex ? AppColors.darkGreen : Colors.grey,
                          width: 1.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // Pill shape
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        minimumSize: const Size(0, 30),
                      ),
                      child: Text(
                        _buttonTitles[index],
                        style: TextStyle(
                          color: index == _selectedButtonIndex? Colors.white : Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return SingleHomeListTile(
                      imageProvider: const NetworkImage('https://www.houseplans.net/news/wp-content/uploads/2023/07/57260-768.jpeg'),
                      title: items[index],
                      subtitle: 'subtitle',
                      description: 'description',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DetailPage()),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
