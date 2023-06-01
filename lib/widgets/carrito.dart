// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';


class CarritoList extends StatefulWidget {

  @override
  State<CarritoList> createState() => _CarritoListState();
}

class _CarritoListState extends State<CarritoList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('NombreProductoN',),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5), 
                    ),
                  color: Color.fromRGBO(248,195,1,1),
                  ),
                  height: 90,
                  width: 90,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text('CANTIDAD', style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                            ),),
                          ),
                          Container(
                            width: 73,
                            height: 23,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5), 
                              ),
                              color: Color.fromRGBO(248,195,1,1),
                            ),
                            
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: Text('TOTAL', style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                              ),),
                            ),
                            Container(
                              width: 73,
                              height: 23,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5), 
                                ),
                                color: Color.fromRGBO(248,195,1,1),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(Icons.save_as_outlined), onPressed: (){}),
                    IconButton(icon: Icon(Icons.delete),onPressed: (){})
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}