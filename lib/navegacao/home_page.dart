import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page2'),
                      builder: (context) => Page2(),
                    ),
                  );
                },
                child: Text('Page 2 via PAGE')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('POP')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/page2');
                },
                child: Text('Page2 named')),
          ],
        ),
      ),
    );
  }
}
