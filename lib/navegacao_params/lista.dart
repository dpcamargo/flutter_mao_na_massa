import 'package:flutter/material.dart';

import 'detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/detalhe',
                  arguments: {
                    'id': 120,
                  },
                );
              },
              child: Text('detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}
