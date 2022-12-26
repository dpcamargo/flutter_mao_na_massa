import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.blue,
                height: 300,
                width: 300,
              ),
            ),
          ),
          Positioned(
            top: 150,
            right: 100,
            bottom: 20,
            child: Container(
              color: Colors.pink,
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
