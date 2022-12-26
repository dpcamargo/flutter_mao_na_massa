import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao,
  scrolls_single_child,
  scrolls_list_view,
  dialogs,
  snackbars,
  forms,
  cidades,
  stack,
  stack2,
  bottom_navigator_bar,
  circle_avatar,
  colors,
  material_banner,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            color: Colors.blueGrey,
            iconSize: 30,
            tooltip: 'Tooltip',
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rows_columns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layout_builder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.botoes_rotacao:
                  Navigator.of(context).pushNamed('/botoes_rotacao');
                  break;
                case PopupMenuPages.scrolls_single_child:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                  break;
                case PopupMenuPages.scrolls_list_view:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.snackbars:
                  Navigator.of(context).pushNamed('/snackbar');
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed('/stack2');
                  break;
                case PopupMenuPages.bottom_navigator_bar:
                  Navigator.of(context).pushNamed('/bottom_navigator_bar');
                  break;
                case PopupMenuPages.circle_avatar:
                  Navigator.of(context).pushNamed('/circle_avatar');
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed('/colors');
                  break;
                case PopupMenuPages.material_banner:
                  Navigator.of(context).pushNamed('/material_banner');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rows_columns,
                  child: Text('Rows Columns'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text('Media Query'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layout_builder,
                  child: Text('Layout Builder'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoes_rotacao,
                  child: Text('Botoes e Rotação'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_single_child,
                  child: Text('Single Child Scroll'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_list_view,
                  child: Text('List View Scroll'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbars,
                  child: Text('Snackbars'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text('Forms'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidades,
                  child: Text('Cidades'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text('Stack'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text('Stack 2'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottom_navigator_bar,
                  child: Text('Bottom Navigator Bar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circle_avatar,
                  child: Text('Circle Avatar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colors,
                  child: Text('Colors'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.material_banner,
                  child: Text('Material Banner'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.blue,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Botão X'),
              ),
              Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).primaryColor,
                  child: Center(
                      child: Text(
                          'Context da pagina pai. Não esperou carregar.'))),
              Divider(
                height: 10,
                color: Colors.transparent,
              ),
              ContainerX(),
              Builder(builder: (context) {
                return Column(
                  children: [
                    Divider(
                      height: 10,
                      color: Colors.transparent,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Theme.of(context).primaryColor,
                      child: Center(child: Text('Context com Builder')),
                    ),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerX extends StatelessWidget {
  const ContainerX({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        color: Theme.of(context).primaryColor,
        child: Center(child: Text('Context com Classe Externa')));
  }
}
