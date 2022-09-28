import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  TextFieldExample({Key? key}) : super(key: key);

  final _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _heightController,
            onChanged: (val){
              print(val);
            },
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: '키 입력'),
          ),
        ),
      ),
    );
  }
}

main() {
  runApp(MaterialApp(home: TextFieldExample()));
}
