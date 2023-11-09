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
    // Obtain the Barrio object by name
  Barrio newBarrio = await obtenerBarrio(barrio);

  // Check if a Barrio was found
  if (newBarrio == null) {
    safePrint('Barrio not found for name: $barrio');
    return;
  }
  final newUser = Usuario(
    nombre: nombre,
    correo: correo,
    direccion: direccion, 
    telefono: telefono,
    barrio: newBarrio, 
   
    
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

Future<Barrio> obtenerBarrio(String nombreBarrio) async{
  final barrioSelected = nombreBarrio;
  final queryPredicate = Barrio.NOMBRE.eq(barrioSelected);

  final request = ModelQueries.list<Barrio>(
    Barrio.classType,
    where: queryPredicate,
    authorizationMode: APIAuthorizationType.apiKey,
  );

  final response = await Amplify.API.query(request: request).response;
  final barrioFromResponse = response.data?.items.first;
  print("__barrioFromResponse__");
  print(barrioFromResponse);
  return barrioFromResponse!;

}


Future<void> saveNegocio(
  String nombre,
  String correo,
  String barrioName,
  String direccion,
  String telefono,
) async {
  // Obtain the Barrio object by name
  Barrio newBarrio = await obtenerBarrio(barrioName);
 //TODO: AGREGAR MANEJO DE ERRORES, SI NO SE ENCUENTRA EL BARRIO, CREARLO
  // Check if a Barrio was found
  if (newBarrio == null) {
    safePrint('Barrio not found for name: $barrioName');
    return;
  }

  // Create a new Negocio object
  final newNegocio = Negocio(
    nombre_negocio: nombre,
    correo: correo,
    direccion: direccion,
    telefono: telefono,
    
  );

  try {
    // Perform the mutation to save the Negocio
    final request = ModelMutations.create(
      newNegocio,
      authorizationMode: APIAuthorizationType.apiKey,
    );
    final res = await Amplify.API.mutate(request: request).response;
    final resData = res.data;
    if (resData == null) {
      safePrint('Errors: ${res.errors}');
      return;
    }
    safePrint('Mutation result: ${resData.toJson()}');
  } on DataStoreException catch (e) {
    safePrint('Something went wrong saving the model: ${e.message}');
  }
}

