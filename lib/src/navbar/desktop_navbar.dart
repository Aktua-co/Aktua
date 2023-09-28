import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/auth_screens/login/controller_login.dart';
import 'package:get/get.dart';

class DesktopNavbar extends StatelessWidget {
const DesktopNavbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: (){
                Get.toNamed('/perfil');
              },
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color:Theme.of(context).primaryColor,
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   // Text("Aktua", style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),),
                    Container(child: const Column(children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://picsum.photos/200/300"),                
                      ),
                      SizedBox(height: 10,),
                      Text("UserName", style:TextStyle(color:Colors.white))  
                    ]),),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.settings),
                    )
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title:Text("Vecinos"),
            onTap:(){
              Get.toNamed('/vecinos');
            },
          ),
          ListTile(
            title:Text("Directorio"),
            onTap:(){
              Get.toNamed('/directorio');
            },
          ),
          ListTile(
            title:Text("Ticketera"),
            onTap:(){
              Get.toNamed('/ticketera');
            
            },
          ),
           ListTile(
            title:Text("Cerrar Sesión"),
            onTap:(){
             signOutCurrentUser();
             Get.toNamed('/bienvenida');
            },
          ),
        ],
      )
    );
  }
}