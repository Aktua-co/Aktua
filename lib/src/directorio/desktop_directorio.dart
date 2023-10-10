import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/bussines_card/bussines_card.dart';
import 'package:aktua_amplify/src/navbar/desktop_navbar.dart';

class DesktopDirectorio extends StatelessWidget {
    final List<BussinesCard> cards;
const DesktopDirectorio({ Key? key, required this.cards }) : super(key: key);

  @override
  Widget build(BuildContext context){
        return Scaffold(
          endDrawer:DesktopNavbar(),
          appBar:AppBar(
            title:const Text("Aktua"),
          ),
          body:ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];
          return Row(
            children: [
              Expanded(flex:2, child: Container(),),
              Expanded(
                flex:4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: card,
                ),
              ),
              Expanded(flex:2, child: Container(),),
            ],
          );
        },
      )
    );
  }
}