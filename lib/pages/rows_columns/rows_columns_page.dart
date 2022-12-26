import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Columns'),
      ),
      body: Container(
        color: Colors.red,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Elemento 1'),
            Text('Elemento 2'),
            Text('Elemento 3'),
            Container(
              color: Colors.amber,
              child: Row(
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
