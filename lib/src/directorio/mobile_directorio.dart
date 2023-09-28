import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/bussines_card/bussines_card.dart';

class MobileDirectorio extends StatelessWidget {
  final List<BussinesCard> cards;
const MobileDirectorio({ Key? key, required this.cards }) : super(key: key);

  @override
  Widget build(BuildContext context){
     return ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: card,
          );
        },
      );
  }
}