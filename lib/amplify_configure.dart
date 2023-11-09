import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/feed/responsive_feed.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'package:amplify_api/amplify_api.dart';
import 'amplifyconfiguration.dart';
import 'package:aktua_amplify/models/ModelProvider.dart';
 
void ConfigureAmplify() async {
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);
    final analyticsPlugin = AmplifyAnalyticsPinpoint();
    //final datastorePlugin =  AmplifyDataStore(modelProvider: ModelProvider.instance);
    try {
      await Amplify.addPlugins([AmplifyAuthCognito(), api,]);
      //await Amplify.addPlugin(AmplifyAPI());
      //await Amplify.addPlugin(datastorePlugin);
      //await Amplify.addPlugin(api);
      await Amplify.configure(amplifyconfig);
      safePrint('Successfully configured');
    } on Exception catch (e) {
      safePrint('Error configuring Amplify: $e');
    }
  }

  