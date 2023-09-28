import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/feed/responsive_feed.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import '../../amplifyconfiguration.dart';
//import 'package:aktua_amplify/amplify_configure.dart';
import 'package:aktua_amplify/src/auth_screens/bienvenida/responsive_bienvenida.dart';
import 'package:aktua_amplify/src/theme/light.dart';
import 'package:aktua_amplify/src/navbar/desktop_navbar.dart';
import 'package:aktua_amplify/src/routes/routes.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

   @override
  void initState() {
    super.initState();
   // ConfigureAmplify();
  }


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      //home:ResponsiveFeed()
       initialRoute: RoutesClass.getBienvenida(),
        getPages: RoutesClass.routes,
    );
  }
}
