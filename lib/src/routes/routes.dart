import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aktua_amplify/src/auth_screens/bienvenida/responsive_bienvenida.dart';
import 'package:aktua_amplify/src/auth_screens/registro/responsive_registro.dart';
import 'package:aktua_amplify/src/auth_screens/login/responsive_login.dart';
import 'package:aktua_amplify/src/feed/responsive_feed.dart';
import 'package:aktua_amplify/src/vecinos/responsive_vecinos.dart';
import 'package:aktua_amplify/src/directorio/responsive_directorio.dart';
import 'package:aktua_amplify/src/ticketera/responsive_ticketera.dart';
import 'package:aktua_amplify/src/perfil/responsive_perfil.dart';

class RoutesClass {
    static const String bienvenida = '/bienvenida';
    static const String registro = '/registro';
    static const String login = '/login';
    static const String feed = '/feed';
    static const String vecinos = '/vecinos';
    static const String directorio = '/directorio';
    static const String ticketera = '/ticketera';
    static const String perfil = '/perfil';

    static String getBienvenida() => bienvenida;
    static String getRegistro() => registro;
    static String getLogin() => login;
    static String getFeed() => feed;
    static String getVecinos() => vecinos;
    static String getDirectorio() => directorio;
    static String getTicketera() => ticketera;  
    static String getPerfil() => perfil;

    
    static final  List<GetPage> routes = [
        GetPage(name: bienvenida, page: () => ResponsiveBienvenida()),
        GetPage(name: registro, page: () => ResponsiveRegistro()),
        GetPage(name: login, page: () => ResponsiveLogin()),
        GetPage(name: feed, page: () => ResponsiveFeed()),
        GetPage(name: vecinos, page: () => ResponsiveVecinos()),
        GetPage(name: directorio, page: () => ResponsiveDirectorio()),
        GetPage(name: ticketera, page: () => ResponsiveTicketera()),
        GetPage(name: perfil, page: () => ResponsivePerfil()),

    ];

}