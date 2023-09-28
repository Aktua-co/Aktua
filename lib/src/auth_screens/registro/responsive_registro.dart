import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/auth_screens/registro/desktop_registro.dart';
import 'package:aktua_amplify/src/auth_screens/registro/tablet_registro.dart';
import 'package:aktua_amplify/src/auth_screens/registro/mobile_registro.dart';

class ResponsiveRegistro extends StatelessWidget {
const ResponsiveRegistro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ResponsiveLayout(
      mobileBody: MobileRegistro(),
      tabletBody: TabletRegistro(),
      desktopBody: DesktopRegistro(),
    );
  }
}