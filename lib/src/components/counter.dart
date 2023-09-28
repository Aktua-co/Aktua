// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
 class CounterWidget extends StatelessWidget {
  final int contador;
  final String titulo;

  const CounterWidget({ Key? key, 
  required this.contador, 
  required this.titulo}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          height:100,
          child: Card(
            color: const Color.fromARGB(0, 255, 255, 255),
            elevation: 6,
            child: Container(
              decoration: BoxDecoration(
                color:Color.fromRGBO(4, 51, 191, 1),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              
              ),
              
              child: AspectRatio(
                aspectRatio: 1,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_activity,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        contador.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            titulo,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}