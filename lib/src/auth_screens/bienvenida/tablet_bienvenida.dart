// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/auth_screens/registro/responsive_registro.dart';
import 'package:aktua_amplify/src/auth_screens/login/responsive_login.dart';
import 'package:get/get.dart';
import 'package:aktua_amplify/src/routes/routes.dart';

class TabletBienvenida extends StatefulWidget {
  const TabletBienvenida({ Key? key }) : super(key: key);

  @override
  _TabletBienvenidaState createState() => _TabletBienvenidaState();
}

class _TabletBienvenidaState extends State<TabletBienvenida> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/bienvenida_1.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
              width: 80,
              child: Image(
              image: AssetImage('lib/assets/images/logo_aktua.png')
              )),
              SizedBox(height:20),
              Text('Bienvenido a Aktua', style: TextStyle(color:Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
              Text('La plataforma del barrio', style: TextStyle(color:Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            ],
            ),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                         /// backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          minimumSize: MaterialStateProperty.all<Size>(Size(100, 50)),
                        ),
                        icon: Icon(Icons.login),
                         onPressed: (){
                        Get.toNamed('/login');
                      }, 
                        label: Text('Inicia Session'),),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                         /// backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          minimumSize: MaterialStateProperty.all<Size>(Size(100, 50)),
                        ),
                        icon:Icon(Icons.app_registration), 
                         onPressed: (){
                        Get.toNamed('/registro');
                      }, 
                        label: Text('Registrate'),),
                    ),
                  )
                ],
              ),
            ),
          ),
          
          
        ]),
      )
    );
  }
}