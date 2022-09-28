import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Page2(
              giveMeInt: 62452,
            ),
          ),
        );
      }),
    );
  }
}

class Page2 extends StatelessWidget {
  Page2({Key? key, required this.giveMeInt}) : super(key: key);
  int giveMeInt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Center(
          child: Text("내가 받는 값은?: $giveMeInt"),
        ),
      ),
    );
  }
}

main() {
  runApp(const MaterialApp(
    home: Page1(),
  ));
}
