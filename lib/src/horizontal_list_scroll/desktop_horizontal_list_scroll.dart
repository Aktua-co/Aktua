import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/components/counter.dart';


class DesktopHorizontallistScroll extends StatefulWidget {
    final List<CounterWidget> counters;

  const DesktopHorizontallistScroll({ Key? key, required this.counters }) : super(key: key);

  @override
  _DesktopHorizontallistScrollState createState() => _DesktopHorizontallistScrollState();
}

class _DesktopHorizontallistScrollState extends State<DesktopHorizontallistScroll> {
   late ScrollController _scrollController;
   @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }
   @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Container(
       // color: Colors.pink,
        width: MediaQuery.of(context).size.width/2, // Set a specific width
      height: 200, 
        child: ListView.builder(
          shrinkWrap: false,
            scrollDirection: Axis.horizontal,
            //controller: _scrollController,
            itemCount: widget.counters.length,
            itemBuilder: (context, index) {
              return Container(
              width:200,
              //decoration: BoxDecoration(color:Colors.yellow),
              //height:100,
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: widget.counters[index],
              ),
              );
            },
          ),
      )
    );
  }
}