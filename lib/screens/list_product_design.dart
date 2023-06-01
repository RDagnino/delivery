// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/menu.dart';
import '../widgets/productos.dart';

class ListProductDesignScreen extends StatefulWidget {
  const ListProductDesignScreen({super.key});


  @override
  State<ListProductDesignScreen> createState() => _ListProductDesignScreenState();
}

class _ListProductDesignScreenState extends State<ListProductDesignScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(248,195,1,1),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                const SizedBox(
                  width: 232,
                  child: Center(
                    child: Text('PRODUCTOS', 
                          style: TextStyle(
                                fontFamily: 'Oswald',
                                fontSize: 30
                              ),
                    ),
                  ),
                ),
              Container(
                child: const Image(image: AssetImage('assets/logogod1.png'), fit: BoxFit.contain, height: 60, width: 60,),
              )
            ],
          )
      ),
      drawer: const Menu(),
      body: ListView(
        children: [
          Column(
          children: [
            ProductList(),
            ProductList(),
            ProductList(),
            ProductList(),
            ProductList(),
            ProductList(),
          ],
        ),
        ]
      )
    );
  }
}

