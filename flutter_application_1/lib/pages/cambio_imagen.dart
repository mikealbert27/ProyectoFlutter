import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/cambio_imagen_controller.dart';
import 'package:get/get.dart';

class CambioImagen extends StatelessWidget{
  const CambioImagen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de imagen'),
        backgroundColor: Colors.red,
      ),
      body:  Center(
        child: GetBuilder<CambioImagenController>(builder: (cambioImagen){
          return GestureDetector(
          onTap: (){
            cambioImagen.cambioImg();
          },
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(cambioImagen.cambiodeImg),
          ),
        );
        })
        ),
    );
  }
}