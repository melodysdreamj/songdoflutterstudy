import 'package:flutter/material.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightBlue,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Counter'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate_outlined), label: 'BMI Cal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.task_alt_rounded), label: 'TODO list'),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined), label: 'Stopwatch'),
        ],
      ),
      body: <Widget>[
        const Center(child: Text("1")),
        const Center(child: Text("2")),
        const Center(child: Text("3")),
        const Center(child: Text("4")),
      ][_selectedIndex],
    );
  }
}

main() {
  runApp(const MaterialApp(
    home: BottomNavigationBarExample(),
  ));
}
