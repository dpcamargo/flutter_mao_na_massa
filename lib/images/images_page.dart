import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Images',
          style: TextStyle(
            fontFamily: 'Tourney',
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pexels-christian-heitz-842711.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            width: 200,
            height: 200,
            child: Center(
                child: Text(
              'Imagem Paisagem',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                backgroundColor: Colors.white,
              ),
            )),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Artist%E2%80%99s_impression_of_the_deep_blue_planet_HD_189733b.jpg/1280px-X.jpg',
              width: 20,
            ),
          ),
        ],
      )),
    );
  }
}
