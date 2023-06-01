// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/favoritos.dart';
import '../widgets/menu.dart';

class FavoritesDesignScreen extends StatelessWidget {
  const FavoritesDesignScreen({super.key});

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
                    child: Text('FAVORITOS', 
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
              ProductFavorite(),
              ProductFavorite(),
              ProductFavorite(),
              ProductFavorite(),
              ProductFavorite(),
              ProductFavorite(),
              ProductFavorite(),
              ProductFavorite(),
              ProductFavorite(),
              ProductFavorite()
            ],
          ),
        ],
      )
    );
  }
}
