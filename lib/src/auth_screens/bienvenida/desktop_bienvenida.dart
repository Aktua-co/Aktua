// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/auth_screens/registro/responsive_registro.dart';
import 'package:aktua_amplify/src/auth_screens/login/responsive_login.dart';
import 'package:get/get.dart';
import 'package:aktua_amplify/src/routes/routes.dart';

class DesktopBienvenida extends StatefulWidget {
  const DesktopBienvenida({ Key? key }) : super(key: key);

  @override
  _DesktopBienvenidaState createState() => _DesktopBienvenidaState();
}

class _DesktopBienvenidaState extends State<DesktopBienvenida> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/bienvenida_1.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          SizedBox(
            height: 100,
            width: 400,
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
        ]),
      )
    );
  }
}