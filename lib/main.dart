import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:flutter_primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:flutter_primeiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:flutter_primeiro_projeto/pages/colors/colors_page.dart';
import 'package:flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:flutter_primeiro_projeto/pages/forms/forms_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_primeiro_projeto/pages/material_banner/material_banner_page.dart';
import 'package:flutter_primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_columns_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/list_view_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/single_child_scroll_view_page.dart';
import 'package:flutter_primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack2_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.green,
            centerTitle: true,
            elevation: 10,
          ),
          fontFamily: 'Roboto',
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shadowColor: Colors.blue,
              elevation: 10,
            ),
          ),
          primarySwatch: Colors.blue,
          primaryColor: Colors.brown,
          canvasColor: Colors.white,
          primaryColorDark: Colors.green),
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnsPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao': (_) => const BotoesRotacaoTextoPage(),
        '/scrolls/single_child': (_) => const SingleChildScrollViewPage(),
        '/scrolls/list_view': (_) => const ListViewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/snackbar': (_) => const SnackbarPage(),
        '/forms': (_) => const FormsPage(),
        '/cidades': (_) => const CidadesPage(),
        '/stack': (_) => const StackPage(),
        '/stack2': (_) => const Stack2Page(),
        '/bottom_navigator_bar': (_) => const BottomNavigatorBarPage(),
        '/circle_avatar': (_) => const CircleAvatarPage(),
        '/colors': (_) => const ColorsPage(),
        '/material_banner': (_) => const MaterialBannerPage(),
      },
    );
  }
}
