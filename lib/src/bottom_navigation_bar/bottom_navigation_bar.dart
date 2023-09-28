import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/feed/responsive_feed.dart';
import 'package:aktua_amplify/src/perfil/responsive_perfil.dart';
import 'package:aktua_amplify/src/mensajes/responsive_mensajes.dart';

class ButtomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  ButtomNavigationBar(
    this.selectedIndex,
    { super.key }
    
    );

  @override
  _ButtomNavigationBarState createState() => _ButtomNavigationBarState();
}

class _ButtomNavigationBarState extends State<ButtomNavigationBar> {

    void _onItemTapped(int index) {
    setState(() {
      switch (index) {
        case 0:
          Navigator.push(context, MaterialPageRoute(builder: (_) => ResponsiveMensajes()));
          break;
        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (_) => ResponsiveFeed()));
          break;
        case 2:
          Navigator.push(context, MaterialPageRoute(builder: (_) => ResponsivePerfil()));
          break;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      //selectedItemColor:Color(0xffc2d62d),
     // unselectedItemColor:Color(0xff1d5699),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.message_rounded ,),
          label: 'Mensajes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.circle_notifications_rounded),
          label: 'Feed',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle,),
          label: 'Perfil',
        ),
      ],
      currentIndex: widget.selectedIndex,
      onTap: _onItemTapped,
    );
  }
}