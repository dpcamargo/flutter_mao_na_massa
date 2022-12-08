import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        settings: RouteSettings(name: 'page1'),
                        builder: (context) => Page1(),
                      ),
                      ModalRoute.withName('page2'));
                },
                child: Text('Page 1 via PAGE')),
            ElevatedButton(onPressed: () {}, child: Text('Page 1 via NAMED')),
          ],
        ),
      ),
    );
  }
}
