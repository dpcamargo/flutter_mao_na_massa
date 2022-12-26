import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = '';
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final passwdEC = TextEditingController();
  String categoria = 'Cat1';

  @override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // TextField(
                //   onChanged: (String value) {
                //     setState(() {
                //       texto = value;
                //     });
                //   },
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // Text('Texto digitado: $texto'),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide()),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.yellow)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.blue)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.red)),
                    labelStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                    ),
                    isDense: true,
                  ),
                  maxLines: null,
                  controller: nameEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide()),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.yellow)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.blue)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.red)),
                    labelStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                    ),
                    isDense: true,
                  ),
                  maxLines: 1,
                  controller: passwdEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo Y não preenchido';
                    }
                  },
                ),
                DropdownButtonFormField<String>(
                  value: categoria,
                  elevation: 16,
                  icon: Icon(Icons.arrow_back_ios_new),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoria não preenchida';
                    }
                  },
                  items: [
                    DropdownMenuItem(child: Text('Cat 1'), value: 'Cat1'),
                    DropdownMenuItem(child: Text('Cat 2'), value: 'Cat2'),
                    DropdownMenuItem(child: Text('Cat 3'), value: 'Cat3'),
                  ],
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        categoria = newValue;
                      });
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    var message = 'Formulário inválido';
                    if (formValid) {
                      message =
                          'Formulário válido (Name: ${nameEC.text}, Passwd: ${passwdEC.text}, Categoria: $categoria )';
                    }
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(message)));
                  },
                  child: Text('Salvar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
