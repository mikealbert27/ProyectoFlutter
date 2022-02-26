import 'package:flutter/material.dart';

class StackPage extends StatelessWidget{
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seccion de los Stacks'),
        backgroundColor: Colors.cyan,
        leading: const Icon(Icons.menu),
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://senpai.gg/blog/wp-content/uploads/2021/04/image-66.jpeg'),
          )
        ],
        ),
        body: Stack(
          children: [
            Image.network('https://i.gifer.com/9jxE.gif',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            ),
            const Positioned(
            bottom: 100,
            right: 10,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 60,
            )
            )
          ],
        ),
    );
  }
}