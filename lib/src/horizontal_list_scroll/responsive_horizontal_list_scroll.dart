import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/responsive/responsive_layout.dart';
import 'package:aktua_amplify/src/horizontal_list_scroll/desktop_horizontal_list_scroll.dart';
import 'package:aktua_amplify/src/horizontal_list_scroll/mobile_horizontal_list_scroll.dart';
import 'package:aktua_amplify/src/horizontal_list_scroll/tablet_horizontal_list_scroll.dart';
import 'package:aktua_amplify/src/components/counter.dart';

class ResponsiveHorizontalListScroll extends StatefulWidget {
   final List<CounterWidget> counters;
const ResponsiveHorizontalListScroll({ Key? key, required this.counters}) : super(key: key);

  @override
  State<ResponsiveHorizontalListScroll> createState() => _ResponsiveHorizontalListScrollState();
}

class _ResponsiveHorizontalListScrollState extends State<ResponsiveHorizontalListScroll> {
  
  @override
  Widget build(BuildContext context){
     return ResponsiveLayout(
      mobileBody: HorizontalScrollableList(counters: widget.counters,),
      tabletBody: TabletHorizontalListScroll(counters: widget.counters),
      desktopBody: DesktopHorizontallistScroll(counters: widget.counters,),
    );
  }
}