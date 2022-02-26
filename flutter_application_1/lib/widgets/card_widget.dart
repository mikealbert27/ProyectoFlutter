import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget{
  final String urlimage;
  final String titulo;
  final String? descripcion;

  const CardWidget({Key? key, 
    required this.titulo,
    required this.urlimage,
    this.descripcion = 'Falta una descripcion',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  )),
              elevation: 20,
              shadowColor: Colors.pink,
              child: Column(
                children: [
                   FadeInImage(
                    width: double.infinity,
                    height: 170,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/images/loading.gif'),
                    image: NetworkImage(
                        urlimage,),
                  ),
                  
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            titulo,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                         Text(
                            descripcion!),
                            const SizedBox(height: 20)
                      ],
                    ),
                  )
                ],
              )
    );
  }
}