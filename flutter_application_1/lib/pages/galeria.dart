import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/galeria_controller.dart';
import 'package:get/get.dart';

class Galeria extends StatelessWidget {
  const Galeria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria de imagenes'),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          Center(
            child: GetBuilder<GaleriaController>(builder: (galeriaCambios) {
              return CircleAvatar(
                backgroundImage: AssetImage(galeriaCambios.imagenGaleria),
                radius: 100,
              );
            }),
          ),
          Positioned(
              bottom: 280,
              left: 30,
              child: GetBuilder<GaleriaController>(builder: (galeriacambios) {
                return GestureDetector(
                  onTap: () {
                    galeriacambios.cambioGaleria(0);
                    //  galeriacambios.galeriaIndex--;
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 50,
                  ),
                );
              })),
          Positioned(
              bottom: 280,
              right: 30,
              child: GetBuilder<GaleriaController>(builder: (galeriacambios) {
                return GestureDetector(
                  onTap: () {
                    galeriacambios.cambioGaleria(1);
                    //  galeriacambios.galeriaIndex++;
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 50,
                  ),
                );
              }))
        ],
      ),
    );
  }
}
