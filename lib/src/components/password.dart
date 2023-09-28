// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aktua_amplify/src//validadores/general_validators.dart';

 class PasswordForm extends StatefulWidget {
final TextEditingController passwordController;

  const PasswordForm({super.key, required this.passwordController});

  @override
  _PasswordFormState createState() => _PasswordFormState();
}
class _PasswordFormState extends State<PasswordForm> {
  final _confirmPasswordController = TextEditingController();
  bool _showConfirmPassword = false;

  @override
  void dispose() {
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.passwordController,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Ingrese la Contraseña',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter a password';
            }
            if (value.length < 8) {
              return 'Password must be at least 8 characters';
            }
            return null;
          },
          onChanged:(value){
            setState(() {
              _showConfirmPassword = false;
            });
          }
        ),
        SizedBox(
          height: 20,
        ),
        if(_showConfirmPassword)
        TextFormField(
          controller: widget.passwordController,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Ingrese la Contraseña',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Por favor confirmela contraseña';
            }
            if (value != widget.passwordController.text) {
              return 'Passwords do not match';
            }
            return null;
          },
        ),
      ],
    );
  }
}
