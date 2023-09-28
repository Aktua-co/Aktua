import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/app/app.dart';
import 'package:aktua_amplify/src/app/responsive_app.dart';
import 'package:provider/provider.dart';
import 'package:aktua_amplify/src/providers/user_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:aktua_amplify/amplify_configure.dart';

void main() async{
  await Hive.initFlutter();
  ConfigureAmplify();
  runApp( 
    MultiProvider(
      providers:[
         ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
      ],
      child: ResponsiveApp()
      )
    
  );
}
