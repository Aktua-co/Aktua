// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';


 class SocialMediaAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SocialLoginButton(
                  buttonType: SocialLoginButtonType.google,
                  onPressed: () {},
                ),
        ),
        SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SocialLoginButton(
                  buttonType: SocialLoginButtonType.twitter,
                  onPressed: () {},
                ),
        ),
        SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SocialLoginButton(
                  buttonType: SocialLoginButtonType.facebook,
                  onPressed: () {},
                ),
        ),
       
      ],
    );
  }
}