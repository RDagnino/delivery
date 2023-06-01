  // ignore_for_file: avoid_unnecessary_containers

  import 'package:flutter/material.dart';

class ProductHistory extends StatelessWidget {
  const ProductHistory({
    super.key,
  });

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
                padding: const EdgeInsets.all(8.0),
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
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Text('FECHA/HORA', style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                            ),),
                      ),
                          Container(
                            width: 125,
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
                  )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}