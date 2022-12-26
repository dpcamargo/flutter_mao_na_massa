import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final cor = Colors.blue;
    // final cor = Colors.blue.withOpacity(0.5);
    // final cor = Color.fromRGBO(0, 0, 255, 1);
    final cor = Color(0xff0104A3);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Container(
            height: 400,
            width: 400,
            color: cor,
          ),
        ),
      ),
    );
  }
}
