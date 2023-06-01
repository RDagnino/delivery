// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/menu.dart';
import '../widgets/carrito.dart';

class BuyDesignScreen extends StatefulWidget {
  const BuyDesignScreen({super.key});

  @override
  State<BuyDesignScreen> createState() => _BuyDesignScreenState();
}

class _BuyDesignScreenState extends State<BuyDesignScreen> {
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
                    child: Text('CARRITO', 
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
              CarritoList(),
              CarritoList(),
              CarritoList(),
              CarritoList(),
              CarritoList(),
              CarritoList(),
              CarritoList(),
              CarritoList(),
            ],
          )
        ],
      )
    );
  }
}
