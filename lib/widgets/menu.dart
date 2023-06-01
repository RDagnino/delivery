// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              'MENU',
              style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(248, 195, 1, 1),
            ),
          ),
          ListTile(
            title: Text('Productos'),
            onTap: () {
              Navigator.of(context).pushNamed('list_product_design');
            },
          ),
          ListTile(
            title: Text('Direcciones'),
            onTap: () {
              Navigator.of(context).pushNamed('list_direction_design');
            },
          ),
          ListTile(
            title: Text('Carrito'),
            onTap: () {
              Navigator.of(context).pushNamed('buy_design');
            },
          ),
          ListTile(
            title: Text('Favoritos'),
            onTap: () {
              Navigator.of(context).pushNamed('favorites_design');
            },
          ),
          ListTile(
            title: Text('Pedidos'),
            onTap: () {
              Navigator.of(context).pushNamed('history_design');
            },
          ),
          ListTile(
            title: Text('Acerca de Nosotros'),
            onTap: () {
              Navigator.of(context).pushNamed('about_us_design');
            },
          )
        ],
      ),
    );
  }
}
