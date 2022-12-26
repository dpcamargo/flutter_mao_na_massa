import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Dialog
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) {
                      return DialogCustom(context);
                    },
                  );
                },
                child: const Text('Dialog')),
            // Simple Dialog
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Simple Dialog'),
                        contentPadding: const EdgeInsets.all(10),
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Lista'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Fechar Dialog'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Simple Dialog')),
            //Alert Dialog
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      if (!Platform.isIOS) {
                        return CupertinoAlertDialog(
                          title: const Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Deseja realmente salvar?'),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  print('Dados Salvos');
                                  Navigator.of(context).pop();
                                },
                                child: Text('Salvar')),
                            TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Cancelar')),
                          ],
                        );
                      } else {
                        return AlertDialog(
                          title: const Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Deseja realmente salvar?'),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  print('Dados Salvos');
                                  Navigator.of(context).pop();
                                },
                                child: Text('Salvar')),
                            TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Cancelar')),
                          ],
                        );
                      }
                    },
                  );
                },
                child: const Text('Alert Dialog')),
            // Time Picker
            ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print('O horário selecionado foi $selectedTime');
                },
                child: const Text('Time Picker')),
            //Date Picker
            ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2025),
                  );
                  print('A data escolhida foi $selectedDate');
                },
                child: const Text('Date Picker')),
            ElevatedButton(
              onPressed: () {
                showAboutDialog(
                    context: context,
                    applicationIcon: Icon(Icons.flutter_dash),
                    children: [
                      Text('ABC'),
                    ]);
              },
              child: Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
