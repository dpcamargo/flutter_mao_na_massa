import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        itemCount: 100,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.red,
            thickness: 2,
          );
        },
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/3658/3658773.png'),
            ),
            subtitle: Text('Flutter é top'),
            trailing: CircleAvatar(),
          );
        },
      ),
    );
  }
}
