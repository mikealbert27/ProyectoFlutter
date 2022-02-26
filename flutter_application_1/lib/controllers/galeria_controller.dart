import 'package:get/get.dart';

class GaleriaController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    cambioGaleria(0);
    imagenGaleria = listadeImagenes.first;
  }

  int galeriaIndex = 0;
  String imagenGaleria = '';

  List<String> listadeImagenes = [
    'assets/images/icon.jpg',
    'assets/images/icon2.jpg',
    'assets/images/icon3.jpg',
    'assets/images/icon4.png',
    'assets/images/icon5.png',
    'assets/images/icon6.jpg',
    'assets/images/icon7.jfif',
    'assets/images/icon8.jpg',
    'assets/images/icon9.jpg',
    'assets/images/icon10.png',
  ];

  dynamic cambioGaleria(int numeroIndex) {
    if (numeroIndex == 1) {
      if (galeriaIndex == 9) {
        galeriaIndex = 0;
      } else {
        galeriaIndex++;
      }
      imagenGaleria = listadeImagenes[galeriaIndex];
    } else {
      if (galeriaIndex == 0) {
        galeriaIndex = 9;
      } else {
        galeriaIndex--;
      }
      imagenGaleria = listadeImagenes[galeriaIndex];
    }
    update();
  }
}
