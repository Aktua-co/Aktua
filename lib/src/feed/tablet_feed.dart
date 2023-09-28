import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:aktua_amplify/src/segmented_menu/segmented_menu.dart';
import 'package:aktua_amplify/src/vecinos/responsive_vecinos.dart';
import 'package:aktua_amplify/src/directorio/responsive_directorio.dart';
import 'package:aktua_amplify/src/ticketera/responsive_ticketera.dart';

class TabletFeed extends StatefulWidget {
const TabletFeed({ Key? key }) : super(key: key);

  @override
  State<TabletFeed> createState() => _TabletFeedState();
}

class _TabletFeedState extends State<TabletFeed> {
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
      appBar:AppBar(
        automaticallyImplyLeading:false,
        title:SegmentedMenu(
          sections: ["Vecinos", "Directorio", "Ticketera"], 
          selectButton: _selectButton,
          selectedIndex: _selectedIndex,
          ),
      ),
      body:body,
      bottomNavigationBar: ButtomNavigationBar(pageIndex),

    );
  }
}