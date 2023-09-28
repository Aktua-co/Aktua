///https://docs.amplify.aws/lib/auth/signin_next_steps/q/platform/flutter/#done

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

class AuthResponse {
  final String? code;
  final String? message;

  AuthResponse({this.code, this.message});
}

Future<AuthResponse> signInUser(String username, String password) async {
  try {
    final result = await Amplify.Auth.signIn(
      username: username,
      password: password,
    );
    var res = await _handleSignInResult(result, username);
    return res;
  } on AuthException catch (e) {
    safePrint('Error signing in: ${e.message}');
     return AuthResponse(
        code: 'error',
        message: '${e.message}',
      );
  }
}

Future<AuthResponse> _handleSignInResult(SignInResult result, String username) async {
  print("_handleSignInResult");
  
  switch (result.nextStep.signInStep) {
    case AuthSignInStep.confirmSignInWithSmsMfaCode:
      return AuthResponse(
              code: '${result.nextStep.signInStep}',
              message: '${result.nextStep.additionalInfo}',
            );
      
    case AuthSignInStep.continueSignInWithMfaSelection:
      return AuthResponse(
        code: '${result.nextStep.signInStep}',
        message: '${result.nextStep.additionalInfo}',
      );
      
    case AuthSignInStep.continueSignInWithTotpSetup:
      return AuthResponse(
        code: '${result.nextStep.signInStep}',
        message: '${result.nextStep.additionalInfo}',
      );
      
    case AuthSignInStep.confirmSignInWithTotpMfaCode:
      return AuthResponse(
        code: '${result.nextStep.signInStep}',
        message: '${result.nextStep.additionalInfo}',
      );
      
    case AuthSignInStep.confirmSignInWithNewPassword:
      safePrint('Enter a new password to continue signing in');
       return AuthResponse(
        code: '${result.nextStep.signInStep}',
        message: 'Enter a new password to continue signing in',
      );
    case AuthSignInStep.confirmSignInWithCustomChallenge:
      
       safePrint("result");
      safePrint(result);
       return AuthResponse(
        code: '${result.nextStep.signInStep}',
        message: '${result.nextStep.additionalInfo}',
      );
    case AuthSignInStep.resetPassword:
      final resetResult = await Amplify.Auth.resetPassword(
        username: username,
      );
      final res = await _handleResetPasswordResult(resetResult);
      return res;
    case AuthSignInStep.confirmSignUp:
      // Resend the sign up code to the registered device.
      final resendResult = await Amplify.Auth.resendSignUpCode(
        username: username,
      );
      final res = _handleCodeDelivery(resendResult.codeDeliveryDetails);
      return res;
    case AuthSignInStep.done:
      safePrint('Sign in is complete');
      return AuthResponse(
        code: 'Success',
        message: 'Ingreso correctamente',
      );
  }
}

Future<AuthResponse> confirmCustomChallenge(String answer, String username) async {
  try {
    final result = await Amplify.Auth.confirmSignIn(
      confirmationValue: answer,
    );
    return _handleSignInResult(result, username);
  } on AuthException catch (e) {
    safePrint('Error confirming custom challenge: ${e.message}');
    return AuthResponse(
        code: 'Error',
        message: 'Error confirming custom challenge: ${e.message}',
      );
  }
}

Future<AuthResponse> confirmNewPassword(String newPassword, String username) async {
  try {
    final result = await Amplify.Auth.confirmSignIn(
      confirmationValue: newPassword,
    );
    return _handleSignInResult(result, username);
  } on AuthException catch (e) {
    safePrint('Error confirming new password: ${e.message}');
     return AuthResponse(
    code: 'Error',
    message: 'Error ${e.message}',
  );
  }
}

Future<AuthResponse> _handleResetPasswordResult(ResetPasswordResult result) async {
  switch (result.nextStep.updateStep) {
    case AuthResetPasswordStep.confirmResetPasswordWithCode:
      final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
      final res = _handleCodeDelivery(codeDeliveryDetails);
      return res;
    case AuthResetPasswordStep.done:
      safePrint('Successfully reset password');
      return AuthResponse(
        code: 'Success',
        message: 'Successfully reset password',
      );
  }
}

AuthResponse _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  safePrint(
    'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
    'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  );
   return AuthResponse(
    code: 'CodeSent',
    message: 'Se envio un codio de verificacio a ${codeDeliveryDetails.destination}',
  );
}

Future<void> signOutCurrentUser() async {
  final result = await Amplify.Auth.signOut();
  if (result is CognitoCompleteSignOut) {
    safePrint('Sign out completed successfully');
  } else if (result is CognitoFailedSignOut) {
    safePrint('Error signing user out: ${result.exception.message}');
  }
}