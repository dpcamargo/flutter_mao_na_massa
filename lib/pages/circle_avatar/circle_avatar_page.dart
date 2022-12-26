import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        children: const [
          ImageAvatar(
              urlImage:
                  'https://img2.gratispng.com/20180904/vji/kisspng-avatar-image-computer-icons-likengo-usertesting-index-5b8ec1242fdcf5.6000571015360822121961.jpg'),
          ImageAvatar(
              urlImage:
                  'https://png.pngtree.com/png-vector/20220817/ourmid/pngtree-cartoon-man-avatar-vector-ilustration-png-image_6111064.png')
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Colors.red,
                Colors.black,
              ],
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              height: 20,
              child: Text(
                'AO VIVO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
