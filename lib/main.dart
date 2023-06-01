import 'package:flutter/material.dart';

import 'package:delivery/screens/login_design.dart';
import 'package:delivery/screens/register_design.dart';
import 'package:delivery/screens/about_us_design.dart';
import 'package:delivery/screens/buy_design.dart';
import 'package:delivery/screens/favorites_design.dart';
import 'package:delivery/screens/history_design.dart';
import 'package:delivery/screens/list_direction_design.dart';
import 'package:delivery/screens/list_product_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      initialRoute: 'login_design',
      routes: {
        'login_design':(_) => LoginDesignScreen(),
        'register_design':(_) => RegisterDesignScreen(),
        'list_product_design':(_) => ListProductDesignScreen(),
        'list_direction_design':(_) => ListDirectionDesignScreen(),
        'buy_design':(_) => BuyDesignScreen(),
        'favorites_design':(_) => FavoritesDesignScreen(),
        'history_design':(_) => HistoryDesignScreen(),
        'about_us_design':(_) => AboutUsDesignScreen()

      },
    );
  }
}