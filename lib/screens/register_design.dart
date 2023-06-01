// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';


class RegisterDesignScreen extends StatefulWidget {

  @override
  State<RegisterDesignScreen> createState() => _RegisterDesignScreenState();
}

class _RegisterDesignScreenState extends State<RegisterDesignScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage('assets/ronpriv.jpeg'),
          fit: BoxFit.cover
        )
      ),
    
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.4),
      body: MainContent()
      ),
    );
    
  }
}


class MainContent extends StatefulWidget {
  const MainContent({
    super.key,
  });

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  
  final nombre_rg = TextEditingController();
  final correo_rg = TextEditingController();
  final contrasena_rg = TextEditingController();
  final contrasena1_rg = TextEditingController();

  String usu_rg = '';
  String cor = '';
  String cont_rg = '';
  String cont1_rg = '';
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                child: Ink(
                  decoration:
                      const ShapeDecoration(shape: CircleBorder(), color: Color.fromRGBO(248,195,1,1)),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushNamed('login_design');
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Center(
                  child: Text('REGISTRARSE', 
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  ),),
                )
              )
            ],
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    width: 265,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5)
                    ),
                    child: Text('NOMBRE DE USUARIO', style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                Container(
                  width: 265,
                  height: 34,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: TextField(
                    controller: nombre_rg,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nombre de usuario'
                    ),
                  ),
                ),
    
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    width: 265,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5)
                    ),
                    child: Text('CORREO', style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                Container(
                  width: 265,
                  height: 34,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: TextField(
                    controller: correo_rg,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresar su correo electrónico'
                    ),
                  ),
                ),
    
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    width: 265,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5)
                    ),
                    child: Text('CONTRASEÑA', style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                Container(
                  width: 265,
                  height: 34,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: TextField(
                    controller: contrasena_rg,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresar una contraseña'
                    ),
                  ),
                ),
    
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    width: 265,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5)
                    ),
                    child: Text('CONFIRMAR CONTRASEÑA', style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                Container(
                  width: 265,
                  height: 34,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: TextField(
                    controller: contrasena1_rg,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Reingresar la contraseña'
                    ),
                  ),
                )
    
    
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Container(
              decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Color.fromRGBO(248,195,1,1)
                      ),
              width: 205,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      
                    ),
                  ),
                  Container(
                    width: 205,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.brown,
                        padding: const EdgeInsets.all(16.0),
                        
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamed('list_product_design');
                      },
                      child: const Text('INICIAR SESIÓN', style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                      ),
                  )
                ],
              ),
            ),
          )
          ],
        ),)
    );
  }
}