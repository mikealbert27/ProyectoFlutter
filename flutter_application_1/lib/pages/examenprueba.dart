import 'package:flutter/material.dart';

class ExamenPrueba extends StatelessWidget{
  const ExamenPrueba({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examen de prueba 1'),
        backgroundColor: Colors.cyan,
      ),

       body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image:  DecorationImage (
                image: NetworkImage(
                  'https://s3.eu-west-3.amazonaws.com/dexertoes-assets-production-7d0f29e6/uploads/2020/03/31163737/aidyn-league-of-legends.jpg'),
                fit: BoxFit.cover,
                ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(200),
                bottomLeft: Radius.circular(200)
                )
              ),
              width: double.infinity,
              height: 450

          ),

          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://i.pinimg.com/236x/aa/51/a4/aa51a46226b51962c8053b30b5484987.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center
                  ),
                borderRadius: BorderRadius.circular(90)
                ),
            )
          ),
        
        Stack(
          children: const [
            Positioned(
              bottom: 10,
              right: 170,
              child: Icon(Icons.arrow_downward, size: 60,)
              
            )
          ],
        )
        
          
        ],
      ));
  }
}