import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/auth_screens/bienvenida/desktop_bienvenida.dart';
import 'package:aktua_amplify/src/auth_screens/bienvenida/tablet_bienvenida.dart';
import 'package:aktua_amplify/src/auth_screens/bienvenida/mobile_bienvenida.dart';

class ResponsiveBienvenida extends StatelessWidget {
const ResponsiveBienvenida({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ResponsiveLayout(
      mobileBody: const MobileBienvenida(),
      tabletBody: const TabletBienvenida(),
      desktopBody: const DesktopBienvenida(),
    );
  }
}