// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ProductFavorite extends StatefulWidget {
  const ProductFavorite({
    super.key,
  });

  @override
  State<ProductFavorite> createState() => _ProductFavoriteState();
}

class _ProductFavoriteState extends State<ProductFavorite> {
  int counter = 1;
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text('PRECIO', style: TextStyle(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: Text('STOCK', style: TextStyle(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Container(
                              height: 27,
                              width: 27,
                              decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(13),
                                topRight: Radius.circular(13),
                                bottomLeft: Radius.circular(13),
                                bottomRight: Radius.circular(13), 
                              ),
                              color: Color.fromRGBO(248,195,1,1),
                            ),
                            child: TextButton(onPressed: (){
                              counter++;
                              if(counter>=0){
                                setState(() {});
                              } else {counter=0;}
                            }, 
                            child: const Text('+', style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                            ),))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              height: 25,
                              width: 35,
                              decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5), 
                              ),
                              color: Color.fromRGBO(248,195,1,1),
                            ),
                            child: Center(child: Text ('$counter', style: const TextStyle(color: Colors.white),)),
                            ),
                          ),Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              height: 27,
                              width: 27,
                              decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(13),
                                topRight: Radius.circular(13),
                                bottomLeft: Radius.circular(13),
                                bottomRight: Radius.circular(13), 
                              ),
                              color: Color.fromRGBO(248,195,1,1),
                            ),
                            child: TextButton(onPressed: (){
                              counter--;
                              if (counter>=1){
                                setState(() {});
                              }else {counter=1;}
                              
                            }, 
                            child: const Text('-', style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                            ),))
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                          width: 95,
                          height: 24,
                          child: TextButton(onPressed:(){} ,
                          child: const Text('AÑADIR', style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Roboto'
                          ),)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
    
  }
}