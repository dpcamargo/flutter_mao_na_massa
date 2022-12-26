import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.purple,
                );
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                var snackBar = SnackBar(
                  content: const Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.indigo,
                  action: SnackBarAction(
                      label: 'Desfazer',
                      onPressed: () {
                        print('Clicado');
                      }),
                );
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
