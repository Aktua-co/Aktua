import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/navbar/mobile_navbar.dart';
import 'package:aktua_amplify/src/navbar/desktop_navbar.dart';
import 'package:aktua_amplify/src/navbar/tablet_navbar.dart';



class ResponsiveNavbar extends StatelessWidget {
const ResponsiveNavbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ResponsiveLayout(
      mobileBody: MobileNavbar(),
      tabletBody: TabletNavbar(),
      desktopBody: DesktopNavbar(),
    );
  }
}