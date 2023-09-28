import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/directorio/mobile_directorio.dart';
import 'package:aktua_amplify/src/directorio/tablet_directorio.dart';
import 'package:aktua_amplify/src/directorio/desktop_directorio.dart';

import 'package:faker/faker.dart';
import 'package:aktua_amplify/src/bussines_card/bussines_card.dart';
import 'dart:math';

class ResponsiveDirectorio extends StatelessWidget {
ResponsiveDirectorio({ Key? key }) : super(key: key);

final List<BussinesCard> cards = List.generate(12, (index){
   final faker = Faker();
   int random = Random().nextInt(5);

   return BussinesCard(
    nombre: faker.lorem.word(),
    direccion : faker.address.streetAddress(),
    telefono: faker.phoneNumber.us(),
    puntuacion: random,
    logo:faker.image.image(keywords: ["branding", "logo","brand"], random:true),
    imagen: faker.image.image(keywords: ["restaurant", "shop","fitness"], random:true),
   );

});

  @override
  Widget build(BuildContext context){
    return ResponsiveLayout(
      mobileBody: MobileDirectorio(cards:cards),
      tabletBody: TabletDirectorio(cards: cards,),
      desktopBody: DesktopDirectorio(cards: cards,),
    );
  }
}