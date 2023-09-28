import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:aktua_amplify/src/segmented_menu/segmented_menu.dart';
import 'package:aktua_amplify/src/vecinos/responsive_vecinos.dart';
import 'package:aktua_amplify/src/directorio/responsive_directorio.dart';
import 'package:aktua_amplify/src/ticketera/responsive_ticketera.dart';
import 'package:aktua_amplify/src/navbar/desktop_navbar.dart';
class DesktopFeed extends StatefulWidget {
const DesktopFeed({ Key? key }) : super(key: key);

  @override
  State<DesktopFeed> createState() => _DesktopFeedState();
}

class _DesktopFeedState extends State<DesktopFeed> {
final int pageIndex = 1;
int _selectedIndex = 0;

  void _selectButton(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
      late Widget body;
    switch(_selectedIndex){
      case 0:
      body = Container(
        child:ResponsiveVecinos(),
      );
      break;
      case 1:
      body = Container(
        child:ResponsiveDirectorio()
      );
      break;
      case 2:
      body = Container(
        child:ResponsiveTicketera()
      );
      break;
    }
    return Scaffold(
     endDrawer:DesktopNavbar(),
        appBar:AppBar(
          title:const Text("Aktua"),
        ),
      body:body,
     // bottomNavigationBar: ButtomNavigationBar(pageIndex),

    );
  }
}