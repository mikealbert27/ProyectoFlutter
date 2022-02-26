import 'package:get/get.dart';

class ContadorController extends GetxController{
  var valor = 0.obs;

  void incrementar()=>valor.value++;

}