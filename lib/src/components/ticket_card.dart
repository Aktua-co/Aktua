import 'package:flutter/material.dart';


class TicketCard extends StatefulWidget {
  final String image;
  final String nombre;
  final String descripcion;

  const TicketCard({ Key? key, 
  required this.nombre, 
  required this.descripcion, required this.image }) : super(key: key);

  @override
  _TicketCardState createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Row(
        children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage:NetworkImage(widget.image),
        
              ),
            ),
        ),
          Container(
           // color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    maxLines:5,
                    widget.nombre, 
                  style:Theme.of(context).textTheme.titleLarge

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width < 600? 160 : MediaQuery.of(context).size.width < 1100?300:500,
                    child: Text(
                      maxLines:5,
                      widget.descripcion, 
                    style:Theme.of(context).textTheme.bodyMedium?.copyWith(color:Colors.black54)
                  
                    ),
                  ),
                ),
              ],
            ),
          )
      ],
      ),
    );
  }
}