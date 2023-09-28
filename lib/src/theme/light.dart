import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const naranja = Color.fromRGBO(242, 101, 19, 1);
const naranjaFuerte = Color(0xFFF24F13);
const gris = Color.fromRGBO(221, 221, 221, 1);
const azul = Color.fromRGBO(4, 51, 191, 1);
const azulFuerte = Color.fromRGBO(0, 10, 39, 1);

 ThemeData lightTheme = ThemeData(
  primarySwatch: const MaterialColor(
        0xFFF26513,
        <int, Color>{
          50: Color(0xFFFFF3E0),
          100: Color(0xFFFFE0B2),
          200: Color(0xFFFFCC80),
          300: Color(0xFFFFB74D),
          400: Color(0xFFFFA726),
          500: Color(0xFFF26513),
          600: Color(0xFFE65100),
          700: Color(0xFFD84315),
          800: Color(0xFFBF360C),
          900: Color(0xFF870000),
        },
      ),
  brightness:Brightness.light,
  dropdownMenuTheme: DropdownMenuThemeData(
    textStyle:TextStyle(color:naranja)

  ),
  inputDecorationTheme: InputDecorationTheme(
   // iconColor:colorClcVerde,
    filled : false,
    fillColor: Colors.white,
    floatingLabelStyle:TextStyle(color:naranja),
    labelStyle: TextStyle(
      fontFamily: GoogleFonts.robotoFlex().fontFamily,
      color: naranja

    )
  ),
  textTheme: TextTheme(
                labelLarge: TextStyle(
                fontFamily:  GoogleFonts.comfortaa().fontFamily,
              ),
              titleLarge: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.comfortaa().fontFamily,
                color: naranja,
              ),
              titleSmall: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.comfortaa().fontFamily,
                color: naranja,
              ),
              bodyMedium: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontFamily: GoogleFonts.inter().fontFamily,
                color: naranjaFuerte,
              ),
              bodyLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w100,
                fontFamily: GoogleFonts.inter().fontFamily,
                color: naranjaFuerte,
              ),
            ),
  colorScheme:ColorScheme.fromSwatch(
          backgroundColor: naranjaFuerte,
          accentColor: azul,
          cardColor:Colors.white,
          primaryColorDark:naranjaFuerte,
          primarySwatch: MaterialColor(
            naranja.value,
            <int, Color>{
              50: naranja.withOpacity(0.1),
              100: naranja.withOpacity(0.2),
              200: naranja.withOpacity(0.3),
              300: naranja.withOpacity(0.4),
              400: naranja.withOpacity(0.5),
              500: naranja.withOpacity(0.6),
              600: naranja.withOpacity(0.7),
              700: naranja.withOpacity(0.8),
              800: naranja.withOpacity(0.9),
              900: naranja.withOpacity(1),
                  },
                ),
               
              )
 );