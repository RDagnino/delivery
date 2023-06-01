// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';


class LoginDesignScreen extends StatefulWidget {
  const LoginDesignScreen({super.key});

  @override
  State<LoginDesignScreen> createState() => _LoginDesignScreenState();
}

class _LoginDesignScreenState extends State<LoginDesignScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(10.0),
        image: const DecorationImage(
          image: AssetImage('assets/ronpriv.jpeg'),
          fit: BoxFit.cover
        )
      ),
    
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.4),
      body: Stack(
        children: const [
          //Contenedor principal LOGIN
          MainContent()
        ],
      )
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

  final usuario = TextEditingController();
  final contrasena = TextEditingController();

  Map<String, dynamic> Usuario = {
    'id': 01,
    'usuario': 'RDagnino',
    'contrasena': 'admin'
  };

  // List<Map<String,dynamic>> Usuarios=[
  //   {'id' : 01, 'usuario': 'RDagnino', 'contrasena': 'admin'},
  //   {'id' : 02, 'usuario': 'MarceloSZ', 'contrasena': 'kxhxhs'},
  //   {'id' : 03, 'usuario': 'DLegua', 'contrasena': 'admbbdd'}
  // ];

  String usu = '';
  String cont = '';
    
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: const Text('BIENVENIDO', style: TextStyle(fontFamily: 'Oswald' ,fontSize: 36, fontWeight:FontWeight.bold), )
            ),
          Container(
            alignment: Alignment.center,
            width: 201,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('DISTRIBUIDORA', 
                  style: TextStyle(
                    fontFamily:'Roboto',
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                Text('CLAROAR S.A.C.',
                style: TextStyle(
                  fontFamily:'Roboto',
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),)  
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 60),
            decoration: const BoxDecoration(
    
            ),
            child: const Image(
              image: AssetImage('assets/logogod1.png'))
            ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 177,
              height: 35,
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5)
              ),
              child: const Text('USUARIO',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 265,
              height: 34,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: TextField(
                controller: usuario,
                decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Nombre de Usuario'
                      ),
                    ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 177,
              height: 35,
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5)
              ),
              child: const Text('CONTRASEÑA',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              )
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 265,
              height: 34,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: TextField(
                controller: contrasena,
                enableInteractiveSelection: false,
                obscureText: true,
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ingrese su Contraseña'
                      ),
                    ),
            ),
          ),
    
          //Botón de REGITRARSE
          Padding(
      padding: const EdgeInsets.all(30.0),
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
            SizedBox(
              width: 205,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.brown,
                  padding: const EdgeInsets.all(16.0),
                ),
                onPressed: (){
                  Navigator.of(context).pushNamed('register_design');
                },
                child: const Text('REGISTRARSE', style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    )),
                ),
            )
          ],
        ),
      ),
    ),
    
          //Boton de INICIAR SESION
          Container(
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
                        usu = usuario.text;
                        cont = contrasena.text;
                        if (usu == Usuario['usuario']  && cont == Usuario['contrasena']){
                          Navigator.of(context).pushNamed('list_product_design');
                        } else {
                          print('Usuario o contraseña incorrecto');
                        }
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
            )
        ],
      ),)
    );
  }
}









