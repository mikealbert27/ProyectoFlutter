import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/menu2_controller.dart';
import 'package:flutter_application_1/pages/card_page.dart';
import 'package:flutter_application_1/pages/contador.dart';
import 'package:get/get.dart';

class MenuPage2 extends StatelessWidget{
  const MenuPage2({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Menu 2'),
      ),
      body: GetBuilder<Menu2Controller>(builder: (menu2Controller){
        if (menu2Controller.index == 0){
          return Contador();
        }else{
          return const CardPage();
        }
      }),
      bottomNavigationBar: 
          GetBuilder<Menu2Controller>(builder: (menu2Controller){
        return BottomNavigationBar(
        onTap: (index){
          menu2Controller.modificarIndex(index);
        },
        elevation: 10,
        selectedItemColor: Colors.cyan,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
            ),
            label: 'Contador',
            ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.image,
            ),
            label: 'Card',
            )
        ],
      );
      },
      )
    );
  }
}