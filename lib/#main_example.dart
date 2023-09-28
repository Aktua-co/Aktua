// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:poc_agenda_clc/constants.dart';
import 'package:poc_agenda_clc/menu_principal/responsive_menu_principal.dart';
import 'package:sizer/sizer.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'amplifyconfiguration.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:poc_agenda_clc/util/userAttributes_provider.dart';
import 'package:poc_agenda_clc/util/token_provider.dart';
import 'package:poc_agenda_clc/theme/light.dart';

void main() {
  runApp(
    MultiProvider(
       providers: [
        ChangeNotifierProvider<TokenProvider>(create: (context) => TokenProvider()),
        ChangeNotifierProvider<UserProvider>(create: (context) => UserProvider()),
      ],// Create the provider
      child: MyApp(),
      
    )
    );
}

/*class CustomAmplifyAuthCognitoResolvers extends MessageResolver {
  const CustomAmplifyAuthCognitoResolvers();

  @override
  String messageCodeToMessage(BuildContext context, String messageCode) {
    // Customize the messages based on the messageCode
    switch (messageCode) {
      case 'UsernameExistsException':
        return AppLocalizations.of(context)!.usernameExistsMessage;
      case 'PasswordResetRequiredException':
        return AppLocalizations.of(context)!.passwordResetRequiredMessage;
      // Add more cases for other messageCodes as needed.
      default:
        return super.messageCodeToMessage(context, messageCode);
    }
  }
}*/

class CustomTitleResolver extends TitleResolver {
  const CustomTitleResolver();

  @override
  String confirmSignUp(BuildContext context) {
    return AppLocalizations.of(context)!.confirmSignUpTitle;
  }

  @override
  String forgotPassword(BuildContext context) {
    return AppLocalizations.of(context)!.forgotPasswordTitle;
  }

  @override
  String resetPassword(BuildContext context) {
    return AppLocalizations.of(context)!.resetPasswordTitle;
  }
}

/// Instantiate a ButtonResolver
class CustomButtonResolver extends ButtonResolver {
  const CustomButtonResolver();

  /// Override the signin function
  @override
  String signIn(BuildContext context) {
    //the text of the signin button can be customized
    return AppLocalizations.of(context)!.signInButton;
  }

  @override
  String forgotPassword(BuildContext context) {
    //the text of the signin button can be customized
    return AppLocalizations.of(context)!.forgotPasswordTitle;
  }

  @override
  String signUp(BuildContext context) {
    //the text of the signin button can be customized
    return AppLocalizations.of(context)!.signUpButton;
  }

  @override
  String submit(BuildContext context) {
    //the text of the signin button can be customized
    return AppLocalizations.of(context)!.submitButton;
  }

  @override
  String backTo(BuildContext context, AuthenticatorStep previousStep) {
    switch (previousStep) {
      case AuthenticatorStep.signUp:
        return AppLocalizations.of(context)!.backToSignupButton;
      case AuthenticatorStep.signIn:
        return AppLocalizations.of(context)!.backToLoginButton;
      default:
        return AppLocalizations.of(context)!.backToButton;
    }
  }
}

class CustomCountryResolver extends CountryResolver {
  const CustomCountryResolver();

  String selectDialCode(BuildContext context) {
    return AppLocalizations.of(context)?.selectDialCode ?? "Seleccione";
  }
}

/// Instantiate an InputResolver
class CustomInputResolver extends InputResolver {
  const CustomInputResolver();

  /// Override the title function
  /// Since this function handles the title for numerous fields,
  /// we recommend using a switch statement so that `super` can be called
  /// in the default case.

  @override
  String title(BuildContext context, InputField field) {
    switch (field) {
      case InputField.name:
        return AppLocalizations.of(context)!.nameInput;
      case InputField.familyName:
        return AppLocalizations.of(context)!.familyNameInput;
      case InputField.email:
        return AppLocalizations.of(context)!.emailInput;
      case InputField.password:
        return AppLocalizations.of(context)!.passwordInput;
      case InputField.passwordConfirmation:
        return AppLocalizations.of(context)!.confirmPasswordInput;
      case InputField.birthdate:
        return AppLocalizations.of(context)!.birthdate;
      case InputField.usernameType:
        return AppLocalizations.of(context)!.toogleLoginHeader;

      case InputField.phoneNumber:
        return 'Número de contacto';

      default:
        return super.title(context, field);
    }
  }

    @override
  String resolve(BuildContext context, InputResolverKey field) {
    switch (field) {
     /* case InputResolverKey.usernameHint:
        return AppLocalizations.of(context)!.usernameHint;*/
      case InputResolverKey.passwordHint:
        return AppLocalizations.of(context)!.passwordHint; 
      case InputResolverKey.newPasswordHint:
        return AppLocalizations.of(context)!.newPasswordHint; 
      case InputResolverKey.passwordConfirmationHint:
        return AppLocalizations.of(context)!.passwordConfirmationHint; 
      case InputResolverKey.emailHint:
        return AppLocalizations.of(context)!.emailHint;
      case InputResolverKey.phoneNumberHint:
        return AppLocalizations.of(context)!.phoneNumberHint; 
      case InputResolverKey.verificationCodeHint:
        return AppLocalizations.of(context)!.verificationCodeHint; 
      case InputResolverKey.birthdateHint:
        return AppLocalizations.of(context)!.birthdateHint; 
      case InputResolverKey.familyNameHint:
        return AppLocalizations.of(context)!.familyNameHint; 
      case InputResolverKey.genderHint:
        return AppLocalizations.of(context)!.genderHint; 
         case InputResolverKey.usernameEmpty:
        return AppLocalizations.of(context)!.usernameEmpty; 
         case InputResolverKey.passwordEmpty:
        return AppLocalizations.of(context)!.passwordEmpty; 
         case InputResolverKey.passwordConfirmationEmpty:
        return AppLocalizations.of(context)!.passwordConfirmationEmpty; 
         case InputResolverKey.emailEmpty:
        return AppLocalizations.of(context)!.emailEmpty;
        case InputResolverKey.familyNameEmpty:
        return AppLocalizations.of(context)!.familyNameEmpty; 
         case InputResolverKey.birthdateEmpty:
        return AppLocalizations.of(context)!.birthdateEmpty; 
        

      default:
        return super.resolve(context, field);
    }
  }
}

/// Instantiate an AuthStringResolver with your two custom resolvers
const stringResolver = AuthStringResolver(
    buttons: CustomButtonResolver(),
    inputs: CustomInputResolver(),
    titles: CustomTitleResolver(),
    countries: CustomCountryResolver());



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  String userEmail = '';
  String userId = '';


  @override
  void initState() {
    super.initState();
    _configureAmplify();
    //fetchToken();
  }

  void _configureAmplify() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.addPlugin(AmplifyAPI());
      await Amplify.configure(amplifyconfig);
      safePrint('Successfully configured');
    } on Exception catch (e) {
      safePrint('Error configuring Amplify: $e');
    }
  }

  

  @override
  Widget build(BuildContext context) {

    return Authenticator(
      stringResolver: stringResolver,

      // `authenticatorBuilder` is used to customize the UI for one or more steps
      authenticatorBuilder: (BuildContext context, AuthenticatorState state) {
        switch (state.currentStep) {
          case AuthenticatorStep.signIn:
            return CustomScaffold(
              state: state,
              // A prebuilt Sign In form from amplify_authenticator
              body: SignInForm(),
              // A custom footer with a button to take the user to sign up
              footer: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('No tienes una cuenta?'),
                  TextButton(
                    onPressed: () => state.changeStep(
                      AuthenticatorStep.signUp,
                    ),
                    child: const Text('Regístrate'),
                  ),
                ],
              ),
            );
          case AuthenticatorStep.signUp:
            return CustomScaffold(
              state: state,
              // A prebuilt Sign Up form from amplify_authenticator
              body: SignUpForm.custom(fields: [
                SignUpFormField.email(required: true),
                SignUpFormField.phoneNumber(required: true),
                SignUpFormField.birthdate(required: true),
                SignUpFormField.name(required: true),
                SignUpFormField.familyName(required: true),
                /*SignUpFormField.custom(
                    title: 'Rut',
                    attributeKey: const CognitoUserAttributeKey.custom('rut'),
                    required: true),*/
                /*SignUpFormField.custom(
                    autofillHints: suggestions,
                    title: 'Previsión',
                    attributeKey:
                        const CognitoUserAttributeKey.custom('prevision'),
                    required: true),*/
                SignUpFormField.password(),
                SignUpFormField.passwordConfirmation()
              ]),
              // A custom footer with a button to take the user to sign in
              footer: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('¿Ya tienes una cuenta?'),
                  TextButton(
                    onPressed: () => state.changeStep(
                      AuthenticatorStep.signIn,
                    ),
                    child: const Text('Ingresa'),
                  ),
                ],
              ),
            );
          case AuthenticatorStep.confirmSignUp:
            return CustomScaffold(
              state: state,
              // A prebuilt Confirm Sign Up form from amplify_authenticator
              body: ConfirmSignUpForm(),
            );
          case AuthenticatorStep.resetPassword:
            return CustomScaffold(
              state: state,
              // A prebuilt Reset Password form from amplify_authenticator
              body: ResetPasswordForm(),
            );
          case AuthenticatorStep.confirmResetPassword:
            return CustomScaffold(
              state: state,
              // A prebuilt Confirm Reset Password form from amplify_authenticator
              body: const ConfirmResetPasswordForm(),
            );
          default:
            // Returning null defaults to the prebuilt authenticator for all other steps
            return null;
        }
      },
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            theme: lightTheme,
            //darkTheme: darkTheme,
            /*ThemeData.from(
              textTheme: TextTheme(
                labelLarge: TextStyle(
                fontFamily:  GoogleFonts.archivo().fontFamily,
              ),
              titleLarge: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.archivo().fontFamily,
                color: Colors.white,
              ),
              titleSmall: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.archivo().fontFamily,
                color: Colors.white,
              ),
              bodyMedium: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontFamily: GoogleFonts.roboto().fontFamily,
                color: Colors.white,
              ),
              bodyLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w100,
                fontFamily: GoogleFonts.roboto().fontFamily,
                color: Colors.white,
              ),
            ),
              colorScheme: ColorScheme.fromSwatch(
                accentColor: colorClcLila,
                cardColor:Colors.white,
                primaryColorDark:colorClcAzulmasfuerte,
                primarySwatch: MaterialColor(
                  colorClcVerde.value,
                  <int, Color>{
                    50: colorClcAzulfuerte.withOpacity(0.1),
                    100: colorClcAzulfuerte.withOpacity(0.2),
                    200: colorClcAzulfuerte.withOpacity(0.3),
                    300: colorClcAzulfuerte.withOpacity(0.4),
                    400: colorClcAzulfuerte.withOpacity(0.5),
                    500: colorClcAzulfuerte.withOpacity(0.6),
                    600: colorClcAzulfuerte.withOpacity(0.7),
                    700: colorClcAzulfuerte.withOpacity(0.8),
                    800: colorClcAzulfuerte.withOpacity(0.9),
                    900: colorClcAzulfuerte.withOpacity(1),
                  },
                ),
                backgroundColor: colorClcAzulmasfuerte,
              ),
            ).copyWith(
              dropdownMenuTheme:DropdownMenuThemeData(
                inputDecorationTheme: InputDecorationTheme(
                  fillColor: colorClcLila,
                ),
                
              ),
              indicatorColor: Colors.red,
            ),*/
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: const Locale('es'),
            // debugShowMaterialGrid: true,
            builder: Authenticator.builder(),
            home: const ResponsiveMenuPrincipal(),
          );
        },
      ),
    );
  }
}

/// A widget that displays a logo, a body, and an optional footer.
class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.state,
    required this.body,
    this.footer,
  });

  final AuthenticatorState state;
  final Widget body;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:Colors.yellow,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color:Colors.cyan,
           image: DecorationImage(
              image: AssetImage('lib/assets/clc-11.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        child: Container(
          decoration: BoxDecoration(   color: colorClcAzulfuerte,
        backgroundBlendMode: BlendMode.hue),
          child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // App logo
                      Padding(
                        padding:EdgeInsets.all(0),
                        child: Center(
                            child: Image(
                                image: AssetImage(
                                    "lib/assets/clc-1359251823-removebg-preview.png"),
                                height: 150)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                         decoration:BoxDecoration(
                          color:const Color.fromRGBO(255, 255, 255, 0.8),
                          borderRadius:BorderRadius.all(Radius.circular(6)),
                          ),
                          constraints: const BoxConstraints(maxWidth: 600),
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: body,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
      persistentFooterButtons: footer != null ? [footer!] : null,
    );
  }
}
