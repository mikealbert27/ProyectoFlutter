import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/card_widget.dart';

class ListviewPage extends StatelessWidget{
  const ListviewPage ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seccion del listview'),
        backgroundColor: Colors.cyan,
        leading: const Icon(Icons.menu,),
        actions: const [
          CircleAvatar(backgroundImage: NetworkImage('https://senpai.gg/blog/wp-content/uploads/2021/04/image-66.jpeg'),
          )
        ],
      ),
    
    body: ListView(
      children: const [
        CardWidget(
          urlimage: 'https://static.wikia.nocookie.net/leagueoflegends/images/4/44/Sett_OriginalCentered.jpg/revision/latest/scale-to-width-down/1280?cb=20191212014421',
          titulo: 'Sett o el JEFE',
          descripcion: 'Un luchador cuerpo a cuerpo con golpes fuertes',
        ),

        CardWidget(
          urlimage: 'https://static.wikia.nocookie.net/leagueoflegends/images/4/44/Sett_OriginalCentered.jpg/revision/latest/scale-to-width-down/1280?cb=20191212014421',
          titulo: 'Sett o el JEFE',
          descripcion: 'Un luchador cuerpo a cuerpo con golpes fuertes',
        )
      ],
    )

    );
  }
}