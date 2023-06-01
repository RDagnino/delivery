import 'package:flutter/material.dart';

class DireccionN extends StatelessWidget {
  const DireccionN({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(248, 195, 1, 1),
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
        width: 308,
        height: 38,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text('DIRECCION N', style: TextStyle(
            color: Color.fromRGBO(125, 121, 121, 1),
            fontSize: 20,
            fontFamily: 'Roboto'
          ),),
        ),
      ),
    );
  }
}
