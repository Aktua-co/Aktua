import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/ticketera/mobile_ticketera.dart';
import 'package:aktua_amplify/src/ticketera/tablet_ticketera.dart';
import 'package:aktua_amplify/src/ticketera/desktop_ticketera.dart';
import 'dart:math';
import 'package:aktua_amplify/src/components/counter.dart';
import 'package:faker/faker.dart';
import 'package:aktua_amplify/src/components/ticket_card.dart';

class ResponsiveTicketera extends StatelessWidget {

ResponsiveTicketera({ Key? key }) : super(key: key);

final List<String> words = ["Gastronomia", "Belleza", "Salud", 'Jardineria', "Indumentaria"];

// String getRandomWord(List<String> words) {
//   Random random = Random();
//   int randomIndex = random.nextInt(words.length);
//   return words[randomIndex];
// }

  @override
  Widget build(BuildContext context){

    //final String randomWord = getRandomWord(words);
    final List<CounterWidget> counters = List.generate(words.length, (index) {
   
      int random = Random().nextInt(30);
      return CounterWidget(
        contador: random, 
        titulo: words[index],
        );
    });

     final List<TicketCard> tickets = List.generate(words.length, (index){
      return TicketCard(
        nombre: faker.person.name(),
        descripcion: faker.lorem.sentence(),
        image: faker.image.image(random:true,keywords: ['logo', 'marketing']),
      );
    });
    

     return ResponsiveLayout(
      mobileBody: MobileTicketera(counters:counters, tickets: tickets,),
      tabletBody: TabletTicketera(counters: counters, tickets: tickets),
      desktopBody: DesktopTicketera(counters: counters, tickets: tickets,),
    );
  }
}