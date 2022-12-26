import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botoes e Rotação de Texto '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.red,
                    child: const Text('Darius Camargo'),
                  ),
                ),
                Icon(Icons.access_time),
              ],
            ),
            Icon(Icons.ac_unit),
            TextButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  padding: EdgeInsets.all(30),
                  minimumSize: Size(150, 150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(600)))),
            ),
            IconButton(
              onPressed: () => print('Exit'),
              icon: Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Colors.red),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                    return Colors.amber;
                  }),
                  minimumSize: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Size(150, 150);
                    }
                    return Size(120, 50);
                  })),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => print('Plane'),
              icon: Icon(Icons.airplane_ticket),
              label: Text('Modo Avião'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.amber,
                shadowColor: Colors.green,
                minimumSize: const Size(120, 50),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: Text('InkWell'),
            ),
            SizedBox(height: 30),
            GestureDetector(
              child: Text('Gesture Detexctor '),
              onTap: () => print('Gesture clicado'),
              onVerticalDragStart: (_) => print('Gesture movimentado $_'),
            ),
            SizedBox(height: 30),

            // BOTÃO CUSTOMIZADO
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      color: Colors.red,
                    )
                  ]),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Center(
                  child: Text(
                    'Botão Salvar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
