import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/contador_controller.dart';
import 'package:get/get.dart';

class Contador extends StatelessWidget{
  Contador({Key? key}) : super(key: key);
  final contadorcontroller = Get.find<ContadorController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Numero del contador', style: TextStyle(fontSize: 20),
            ),
            Obx(()=>Text(contadorcontroller.valor.toString(), style: const TextStyle(fontSize: 15),))
          ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.red,
          tooltip: 'Click para incrementar',
          child: const Icon(Icons.add),
          backgroundColor: Colors.cyan,
          onPressed: () => contadorcontroller.incrementar(),
        ),
    );
  }
}