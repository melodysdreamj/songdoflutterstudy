import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  const IconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.favorite_border,
          size: 150,
          color: Colors.red,
        ),
      ),
    );
  }
}

main(){
  runApp(const MaterialApp(
    home: IconExample(),
  ));
}