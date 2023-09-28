import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/perfil/mobile_perfil.dart';
import 'package:aktua_amplify/src/perfil/tablet_perfil.dart';
import 'package:aktua_amplify/src/perfil/desktop_perfil.dart';
class ResponsivePerfil extends StatelessWidget {
const ResponsivePerfil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ResponsiveLayout(
      mobileBody: MobilePerfil(),
      tabletBody: TabletPerfil(),
      desktopBody: DesktopPerfil(),
    );
  }
}