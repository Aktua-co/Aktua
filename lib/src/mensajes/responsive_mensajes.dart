import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/mensajes/mobile_mensajes.dart';
import 'package:aktua_amplify/src/mensajes/tablet_mensajes.dart';
import 'package:aktua_amplify/src/mensajes/desktop_mensajes.dart';

class ResponsiveMensajes extends StatelessWidget {
const ResponsiveMensajes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
     return ResponsiveLayout(
      mobileBody: MobileMensajes(),
      tabletBody: TabletMensajes(),
      desktopBody: DesktopMensajes(),
    );
  }
}