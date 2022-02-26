import 'package:flutter/material.dart';

class MenuPagina extends StatelessWidget{
  const MenuPagina({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicacion de estudios'),
        backgroundColor: Colors.cyan,
      ),

      body: ListView(
        children: [
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/contador'),
            title: const Text('Contador'),
            trailing: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.amber,
            ),
            leading: const Icon(
              Icons.calculate,
              color: Colors.amber,
            ),
          ),
          const Divider(),

           ListTile(
            onTap: () => Navigator.pushNamed(context, '/contenedor'),
            title: const Text('Contenedores'),
            trailing: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.amber,
            ),
            leading: const Icon(
              Icons.list_alt,
              color: Colors.amber,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/cardpage'),
            title: const Text('Card Page'),
            trailing: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.amber,
            ),
            leading: const Icon(
              Icons.card_giftcard,
              color: Colors.amber,
            ),
          ),
           const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/stack'),
            title: const Text('Stacks'),
            trailing: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.amber,
            ),
            leading: const Icon(
              Icons.view_list,
              color: Colors.amber,
            ),
          ),
           const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/listview'),
            title: const Text('List view'),
            trailing: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.amber,
            ),
            leading: const Icon(
              Icons.list,
              color: Colors.amber,
            ),
          ),
        ],
        ),
    );
  }
}