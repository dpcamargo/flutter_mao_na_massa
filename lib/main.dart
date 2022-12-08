import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao_params/detalhe.dart';

import 'navegacao/home_page.dart' as navegacao;
import 'navegacao/page1.dart';
import 'navegacao/page2.dart';
import 'navegacao/page3.dart';
import 'navegacao/page4.dart';
import 'navegacao_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: navegacao.HomePage(),
      initialRoute: '/navegacao_param',
      routes: {
        '/': (_) => const navegacao.HomePage(),
        '/page1': (_) => const Page1(),
        '/page2': (_) => const Page2(),
        '/page3': (_) => const Page3(),
        '/page4': (_) => const Page4(),
        '/navegacao_param': (_) => Lista(),
        '/detalhe': (_) => Detalhe(),
      },
    );
  }
}
