import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira AppBar'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                offset: Offset(10, 10),
              ),
              BoxShadow(
                color: Colors.green,
                blurRadius: 20,
                offset: Offset(-10, -10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
