import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aktua_amplify/src/classes/class_user.dart';

class UserProvider extends ChangeNotifier {
  AuthUser? _user;
  Map<String, String> _userAttributes = {};

  AuthUser? get user => _user;
  Map<String, String> get userAttributes => _userAttributes;

  Future<void> fetchUser() async {
    try {
      final authUser = await Amplify.Auth.getCurrentUser();
      _user = authUser;
      notifyListeners();
    } catch (e) {
      print('Error fetching user: $e');
    }
  }

  Future<void> fetchUserAttributes() async {
    try {
      List<AuthUserAttribute> userAttributes = await Amplify.Auth.fetchUserAttributes();
      print('User attributes: $userAttributes');
      Map<String, String> newFilteredAttributes = _getUserAttributesMap(userAttributes);
      _userAttributes = newFilteredAttributes;
    }catch (e) {
      print('Error fetching user attributes: $e');
    }
    
}

 Map<String, String> _getUserAttributesMap(List<AuthUserAttribute> attributes) {
    Map<String, String> userAttributesMap = {};
    for (var attribute in attributes) {
      
      var key = attribute.userAttributeKey;
      
      userAttributesMap[key.toString()] = attribute.value;

    }
    return userAttributesMap;
  }
}


