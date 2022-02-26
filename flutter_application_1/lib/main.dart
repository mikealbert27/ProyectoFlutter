import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/cambio_imagen_controller.dart';
import 'package:flutter_application_1/controllers/contador_controller.dart';
import 'package:flutter_application_1/controllers/galeria_controller.dart';
import 'package:flutter_application_1/controllers/menu2_controller.dart';
import 'package:flutter_application_1/pages/cambio_imagen.dart';
import 'package:flutter_application_1/pages/card_page.dart';
import 'package:flutter_application_1/pages/contador.dart';
import 'package:flutter_application_1/pages/container.dart';
import 'package:flutter_application_1/pages/examenprueba.dart';
import 'package:flutter_application_1/pages/galeria.dart';
import 'package:flutter_application_1/pages/listview.dart';
import 'package:flutter_application_1/pages/menu.dart';
import 'package:flutter_application_1/pages/menu2.dart';
import 'package:flutter_application_1/pages/stacks.dart';
import 'package:get/get.dart';



void main() {
  Get.lazyPut(() => GaleriaController());
  Get.lazyPut(()=> ContadorController());
  Get.lazyPut(()=> Menu2Controller());
  Get.lazyPut(() => CambioImagenController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
        title: 'Aplicacion para estudiar',
        initialRoute: '/galeria',
        routes: {
          '/menu': (context) => const MenuPagina(),
          '/contador': (context) => Contador(),
          '/contenedor' : (context) => const Contenedor(),
          '/cardpage' : (context) => const CardPage(),
          '/stack' : (context) => const StackPage(),
          '/listview' : (context) => const ListviewPage(),
          '/examen' : (context) => const ExamenPrueba(),
          '/menu2' : (context) => const MenuPage2(),
          '/cambioimagen' : (context) => const CambioImagen(),
          '/galeria' : (context) => const Galeria()
        });
    
  }
}
