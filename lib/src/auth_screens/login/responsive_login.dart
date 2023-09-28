import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/auth_screens/login/desktop_login.dart';
import 'package:aktua_amplify/src/auth_screens/login/tablet_login.dart';
import 'package:aktua_amplify/src/auth_screens/login/mobile_login.dart';

class ResponsiveLogin extends StatelessWidget {
const ResponsiveLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ResponsiveLayout(
      mobileBody: MobileLogin(),
      tabletBody: TabletLogin(),
      desktopBody: DesktopLogin(),
    );
  }
}