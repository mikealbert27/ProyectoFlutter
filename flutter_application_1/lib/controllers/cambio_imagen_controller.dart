import 'package:get/get.dart';

class CambioImagenController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    cambioImg();
  }

  int indexImagen = 0;
  String cambiodeImg = '';

  void cambioImg(){
    if (indexImagen == 0){

      cambiodeImg = 'assets/images/icon2.jpg';
      indexImagen ++;

    } else {

      cambiodeImg = 'assets/images/icon.jpg';
      indexImagen --;

    }
    update();
  }
}