/// Signs a user up with a username, password, and email. The required
/// attributes may be different depending on your app's configuration.
/// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aktua_amplify/models/ModelProvider.dart';
import 'package:amplify_api/amplify_api.dart';
import '../../../amplifyconfiguration.dart';

class AuthResponse {
  final String? code;
  final String? message;

  AuthResponse({this.code, this.message});
}

Future<AuthResponse> signUpUser({
 required String username,
 required String familyName,
 required String password,
 required String email,
 //String? phoneNumber,
}) async {
 try {
   final userAttributes = {
     AuthUserAttributeKey.email: email,
     AuthUserAttributeKey.name: username,
     AuthUserAttributeKey.familyName: familyName,
    // if (phoneNumber != null) AuthUserAttributeKey.phoneNumber: phoneNumber,
     // additional attributes as needed
   };
   final result = await Amplify.Auth.signUp(
     username: email,
     password: password,
     options: SignUpOptions(
       userAttributes: userAttributes,
     ),
   );
   final res = await _handleSignUpResult(result);
   return res;
 } on AuthException catch (e) {
   safePrint('Error registrando usuario: ${e.message}');
   return AuthResponse(code: 'Error', message: 'Error registrando usuario: ${e.message}');
 }
}

Future<AuthResponse> _handleSignUpResult(SignUpResult result) async {
  switch (result.nextStep.signUpStep) {
    case AuthSignUpStep.confirmSignUp:
      final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
      _handleCodeDelivery(codeDeliveryDetails);
      return _handleCodeDelivery(codeDeliveryDetails);
      
    case AuthSignUpStep.done:
      safePrint('Se completo el registro');
      return AuthResponse(code: 'Success', message: 'Se completo el registro');
  }
}

AuthResponse _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  safePrint(
    'Se envio un codigo de verificacio a ${codeDeliveryDetails.destination}. '
    'Por favor revise su ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  );
  return AuthResponse(
    code: 'CodeSent',
    message: 'Se envio un codio de verificacio a ${codeDeliveryDetails.destination}',
  );
}

Future<AuthResponse> confirmUser({
  required String username,
  required String confirmationCode,
}) async {
  try {
    final result = await Amplify.Auth.confirmSignUp(
      username: username,
      confirmationCode: confirmationCode,
    );
    // Check if further confirmations are needed or if
    // the sign up is complete.
    final confirm = await _handleSignUpResult(result);
    return confirm;
  } on AuthException catch (e) {
    safePrint('Error confirmado al usuario: ${e.message}');
    return AuthResponse(code: 'Error', message: 'Error confirmando al usuario: ${e.message}');
  }
}


Future<void> saveUser(
  String nombre,
  String correo,
  String barrio,
  String direccion,
  String telefono,

) async {
  final newUser = Usuario(
    nombre: nombre,
    correo: correo,
    direccion: '', 
    telefono: '',
    barrio: Barrio(nombre:'', creado_en: TemporalDateTime.now()), 
    creado_en: TemporalDateTime.now(), 
    
  );

  try {
    final request = ModelMutations.create(
      newUser,
      authorizationMode: APIAuthorizationType.apiKey,
      );
    final res = await Amplify.API.mutate(request: request).response;
    final resData = res.data;
    if (resData == null) {
      safePrint('errors: ${res.errors}');
      return;
    }
    safePrint('Mutation result: ${resData.toJson()}');
  } on DataStoreException catch (e) {
    safePrint('Something went wrong saving model: ${e.message}');
  }
}

Future<void> saveNegocio(
  String nombre,
  String correo,
  String barrio,
  String direccion,
  String telefono,

) async {
  final newNegocio = Negocio(
    nombre_negocio: '',
    correo: correo, 
    direccion: '', 
    telefono: '', 
    barrio: Barrio(nombre:'', creado_en: TemporalDateTime.now()),
    creado_en: TemporalDateTime.now(),
    
  );

  try {
    final request = ModelMutations.create(
      newNegocio,
      authorizationMode: APIAuthorizationType.apiKey,
      );
    final res = await Amplify.API.mutate(request: request).response;
    final resData = res.data;
    if (resData == null) {
      safePrint('errors: ${res.errors}');
      return;
    }
    safePrint('Mutation result: ${resData.toJson()}');
  } on DataStoreException catch (e) {
    safePrint('Something went wrong saving model: ${e.message}');
  }
}

