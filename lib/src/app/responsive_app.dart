import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/app/app.dart';
import 'package:aktua_amplify/src/app/desktop_app.dart';
/*import 'package:aktua_amplify/src/app/desktop_app.dart';
import 'package:aktua_amplify/src/app/tablet_app.dart';*/



class ResponsiveApp extends StatefulWidget {
  const ResponsiveApp({ Key? key }) : super(key: key);

  @override
  _ResponsiveAppState createState() => _ResponsiveAppState();
}

class _ResponsiveAppState extends State<ResponsiveApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: MyApp(),
      tabletBody: MyApp(),
      desktopBody: DesktopMyApp(),
    );
  }
}