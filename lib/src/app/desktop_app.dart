import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/feed/responsive_feed.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import '../../amplifyconfiguration.dart';

import 'package:aktua_amplify/src/auth_screens/bienvenida/responsive_bienvenida.dart';
import 'package:aktua_amplify/src/theme/light.dart';
import 'package:aktua_amplify/src/navbar/desktop_navbar.dart';
import 'package:aktua_amplify/src/routes/routes.dart';
import 'package:get/get.dart';
import 'package:aktua_amplify/src/auth_screens/bienvenida/responsive_bienvenida.dart';


class DesktopMyApp extends StatefulWidget {
  const DesktopMyApp({super.key});

  @override
  State<DesktopMyApp> createState() => _DesktopMyAppState();
}

class _DesktopMyAppState extends State<DesktopMyApp> {
  // This widget is the root of your application.

   @override
  void initState() {
    super.initState();
    
  }


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesClass.getBienvenida(),
      getPages: RoutesClass.routes,
    );
  }
}
