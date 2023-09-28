// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/components/rating.dart';

class BussinesCard extends StatelessWidget {
   final String nombre;
  final String direccion;
  final String telefono;
  final int puntuacion;
  final String logo;
  final String imagen;

const BussinesCard({ Key? key, 
required this.nombre, 
required this.direccion, 
required this.telefono, 
required this.puntuacion, 
required this.logo, 
required this.imagen })
: super(key: key);

  @override
  Widget build(BuildContext context){
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height:150,
            decoration: BoxDecoration(
              image: DecorationImage(
              image:NetworkImage(imagen),
              fit: BoxFit.cover,
            ),
              ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 2.0,
                ),
              ),
                child: CircleAvatar(
                  backgroundImage:  NetworkImage(logo),
                ),
              ),
            )
          ),
          Container(
           // decoration: BoxDecoration(color:Colors.blue),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                    nombre,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RatingWidget(rating: 4)
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(direccion),
                  SizedBox(height: 8),
                  Text(telefono),
                  SizedBox(height: 8),
                  Text(puntuacion.toString()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}