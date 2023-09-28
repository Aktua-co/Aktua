import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/bottom_navigation_bar/bottom_navigation_bar.dart';

class DesktopMensajes extends StatelessWidget {
const DesktopMensajes({ Key? key }) : super(key: key);
final int pageIndex = 0;

  @override
  Widget build(BuildContext context){
     return Scaffold(
      appBar:AppBar(
        title: Center(child: Text("Amicomunidad")),
      ),
      body:Column(children: [
        Text("mensajes"),
        Text("mensajes")
      ],),
      bottomNavigationBar: ButtomNavigationBar(pageIndex),

    );
  }
}