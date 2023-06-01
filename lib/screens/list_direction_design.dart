// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../widgets/direccion.dart';
import '../widgets/menu.dart';

class ListDirectionDesignScreen extends StatefulWidget {
  const ListDirectionDesignScreen({super.key});

  @override
  State<ListDirectionDesignScreen> createState() => _ListDirectionDesignScreenState();
}

class _ListDirectionDesignScreenState extends State<ListDirectionDesignScreen> {
  
  final direction = TextEditingController();
  String dir = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(248,195,1,1),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                Container(
                  width: 232,
                  child: const Center(
                    child: Text('DIRECCIONES', 
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
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text('INGRESAR NUEVA DIRECCIÓN', style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto'
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 308,
                    padding: const EdgeInsets.symmetric(horizontal:10),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(240, 215, 127, 1),
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0,0,0,0.25),
                          spreadRadius: 1,
                          blurRadius: 7,
                          blurStyle: BlurStyle.normal,
                          offset: Offset(2, 5)
                        )
                      ]
                    ),
                    child: TextField(
                      controller: direction,
                    )),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text('MIS DIRECCIONES', style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto'
                      ),
                      ),
                  ),
                  DireccionN(),
                  DireccionN(),
                  DireccionN(),
                  DireccionN(),
                  DireccionN()
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

