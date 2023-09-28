import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/components/counter.dart';
import 'package:aktua_amplify/src/horizontal_list_scroll/responsive_horizontal_list_scroll.dart';
import 'package:aktua_amplify/src/horizontal_list_scroll/mobile_horizontal_list_scroll.dart';
import 'package:aktua_amplify/src/components/ticket_card.dart';


class TabletTicketera extends StatelessWidget {
  final List<TicketCard> tickets;
  final List<CounterWidget> counters;

const TabletTicketera({ Key? key, 
required this.counters, 
required this.tickets }) : super(key: key);

  @override
  Widget build(BuildContext context){
     return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color:Color.fromARGB(255, 205, 175, 156),
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 300,
            //color:Colors.red,
            child: 
          Center(child: ResponsiveHorizontalListScroll(counters: counters)
          )),
          Container(
            //color: Colors.greenAccent,
            width: MediaQuery.of(context).size.width*0.8,
            child: ListView.builder(
              itemCount: tickets.length, 
              itemBuilder:(context, index) => Padding(
                padding: const EdgeInsets.all(12.0),
                child: tickets[index],
              ), 
              shrinkWrap: true, 
              physics: NeverScrollableScrollPhysics(),
              ),
          ),
        ],
      ),
    );
  }
}