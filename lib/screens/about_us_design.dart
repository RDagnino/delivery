// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../widgets/menu.dart';

class AboutUsDesignScreen extends StatelessWidget {
  const AboutUsDesignScreen({super.key});

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
                    child: Text('NOSOTROS', 
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
        body: Column(
          children: [
            Container(
              height: 240,
              width: 500,
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 50),
              child: const Image(image: AssetImage('assets/logogod1.png')),
            ),
            Container(
              child: const Text(
                'DISTRIBUIDORA CLAROAR S.A.C.',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Column(
                children: [
                  const Text(
                    'INTEGRANTES',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '  .HUALLPA FERNÁNDEZ, NINA MUD',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '  .LEGUA TASAYCO, DIEGO',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '  .OJOSE ORTEGA, JHON',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '  .SANCHEZ PACHAS, MARCELO',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '  .TASAYCO DAGNINO, RENZO',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dirección: Calle Lima S/N, Sunampe 11702 \n',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Fundador: Arburua Sanchez, Claudio Carlos \n',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'CREADO POR: RENZOA',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              color: const Color.fromRGBO(248,195,1,1),
              width: 500,
              height: 65,
              child: Row(
                children: [
                  Container(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text('NIHAN', style: TextStyle(color: Colors.white, fontFamily: 'Roboto', fontSize: 15, fontWeight: FontWeight.bold,),),
                      ),
                      Text('Todos los derechos reservados \n©RENZOA', style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 10,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  Container(
                    width: 60,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Image(image: AssetImage('assets/twitter 1.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Image(image: AssetImage('assets/Vector.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Image(image: AssetImage('assets/facebook 1.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Image(image: AssetImage('assets/whatsapp 1.png')),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
        );
  }
}
