// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/historial.dart';
import '../widgets/menu.dart';

class HistoryDesignScreen extends StatelessWidget {
  const HistoryDesignScreen({super.key});

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
                    child: Text('PEDIDOS', 
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
              ProductHistory(),
              ProductHistory(),
              ProductHistory(),
              ProductHistory(),
              ProductHistory(),
              ProductHistory(),
              ProductHistory(),
              ProductHistory(),
            ],
          ),
        ],
      )
    );
  }
}
