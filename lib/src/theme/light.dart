import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';


const naranja = Color.fromRGBO(242, 101, 19, 1);
const naranjaFuerte = Color(0xFFF24F13);
const gris = Color.fromRGBO(221, 221, 221, 1);
const azul = Color.fromRGBO(4, 51, 191, 1);
const azulFuerte = Color.fromRGBO(0, 10, 39, 1);

const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffe65100),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffffd1b7),
  onPrimaryContainer: Color(0xff14110f),
  secondary: Color(0xff2979ff),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffa5cdff),
  onSecondaryContainer: Color(0xff0e1114),
  tertiary: Color(0xff2962ff),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xffaac7ff),
  onTertiaryContainer: Color(0xff0e1114),
  error: Color(0xffb00020),
  onError: Color(0xffffffff),
  errorContainer: Color(0xfffcd8df),
  onErrorContainer: Color(0xff141213),
  background: Color(0xfffefaf8),
  onBackground: Color(0xff090909),
  surface: Color(0xfffefaf8),
  onSurface: Color(0xff090909),
  surfaceVariant: Color(0xffede5e0),
  onSurfaceVariant: Color(0xff121111),
  outline: Color(0xff7c7c7c),
  outlineVariant: Color(0xffc8c8c8),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff161210),
  onInverseSurface: Color(0xfff5f5f5),
  inversePrimary: Color(0xffffcf99),
  surfaceTint: Color(0xffe65100),
);


const ColorScheme flexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xffd2e4ff),
  onPrimary: Color(0xff001225),
  primaryContainer: Color(0xff00497f),
  onPrimaryContainer: Color(0xfff8f9ff),
  secondary: Color(0xffffede8),
  onSecondary: Color(0xff270600),
  secondaryContainer: Color(0xff832600),
  onSecondaryContainer: Color(0xfffff8f6),
  tertiary: Color(0xffd3f7ff),
  onTertiary: Color(0xff001418),
  tertiaryContainer: Color(0xff004e59),
  onTertiaryContainer: Color(0xffeefcff),
  error: Color(0xffffb4ab),
  onError: Color(0xff2d0001),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xfffff8f7),
  background: Color(0xff111315),
  onBackground: Color(0xfffdfcfe),
  surface: Color(0xff0b0c0d),
  onSurface: Color(0xfffdfcfe),
  surfaceVariant: Color(0xff272a2e),
  onSurfaceVariant: Color(0xffeff0f7),
  outline: Color(0xffc5c6cc),
  outlineVariant: Color(0xff75777d),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xffefeff0),
  onInverseSurface: Color(0xff1b1c1d),
  inversePrimary: Color(0xff0061a6),
  surfaceTint: Color(0xffd2e4ff),
);

TextTheme textTheme= TextTheme(
                displayLarge: TextStyle(
                  color:Colors.black,
                height: 0.9,
                fontSize: 80,
                fontWeight: FontWeight.bold,
                fontFamily:  GoogleFonts.comfortaa().fontFamily,
                ),
                displaySmall: TextStyle(
                  color:Colors.black,
                height: 0.8,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.comfortaa().fontFamily,
              ),
                labelLarge: TextStyle(
                  color:Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily:  GoogleFonts.roboto().fontFamily,
              ),
              labelSmall: TextStyle(
                color:Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily:  GoogleFonts.roboto().fontFamily,
              ),
              titleLarge: TextStyle(
                color:Colors.black,
                height: 0.8,
                fontSize: 20,
                fontWeight: FontWeight.w800,
                fontFamily: GoogleFonts.comfortaa().fontFamily,
              ),
              titleMedium: TextStyle(
                color:Colors.black,
                height: 0.8,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              titleSmall: TextStyle(
                color:Colors.black,
                height: 0.8,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.comfortaa().fontFamily,
              ),
              bodySmall: TextStyle(
                color:Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              bodyMedium: TextStyle(
                color:Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
              bodyLarge: TextStyle(
                color:Colors.black,
                height: 0.9,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
            );

 ThemeData lightTheme =  FlexThemeData.light(
  scheme: FlexScheme.custom,
  colorScheme: flexSchemeLight,
  usedColors: 7,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  scaffoldBackground: Color(0xffffffff),
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: true,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    //switchSchemeColor: SchemeColor.secondary,
    //alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
    ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  //useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
).copyWith(
  chipTheme: const ChipThemeData(
    elevation: 2,
    surfaceTintColor: Color(0xfffef7f5),
   showCheckmark: false, 
    backgroundColor: Color(0xfffef7f5),
   
  ),
  textTheme: textTheme,
   buttonTheme: const ButtonThemeData(
    hoverColor: naranja, // Set the desired hover color
  ),
  primaryIconTheme: const IconThemeData(
    color: naranja),
  iconTheme: const IconThemeData(
    color: naranja,),
   appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    color: Colors.transparent,
    elevation: 0,
  ),
);