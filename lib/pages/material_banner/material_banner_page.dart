import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialBanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                var materialBanner = MaterialBanner(
                  actions: [
                    TextButton(
                      onPressed: () => ScaffoldMessenger.of(context)
                          .hideCurrentMaterialBanner(),
                      child: Text('Cancelar'),
                    ),
                  ],
                  content: Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.purple,
                );
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(materialBanner);
                Future.delayed(
                    Duration(seconds: 3),
                    () => ScaffoldMessenger.of(context)
                        .hideCurrentMaterialBanner());
              },
              child: const Text('Simple Material Banner'),
            ),
          ],
        ),
      ),
    );
  }
}
