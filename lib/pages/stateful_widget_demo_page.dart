import 'package:flutter/material.dart';

class StatefulWidgetDemoPage extends StatefulWidget {
  const StatefulWidgetDemoPage({super.key});

  @override
  State<StatefulWidgetDemoPage> createState() {
    return _StatefulWidgetDemoPageState();
  }
}

class _StatefulWidgetDemoPageState extends State<StatefulWidgetDemoPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You\'ve pushed the button this many times: '),
            Text('$_counter'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_counter;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
