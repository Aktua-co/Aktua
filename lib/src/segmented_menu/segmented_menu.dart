
import 'package:flutter/material.dart';

class SegmentedMenu extends StatefulWidget {
  final Function selectButton;
  final int selectedIndex;
  final List<String> sections;
  const SegmentedMenu({ Key? key, required this.sections, required this.selectButton, required this.selectedIndex,}) : super(key: key);

  @override
  _SegmentedMenuState createState() => _SegmentedMenuState();
}

class _SegmentedMenuState extends State<SegmentedMenu> {

 
  @override
  Widget build(BuildContext context) {
     return Row(
      children: List.generate(
        widget.sections.length,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                widget.selectButton(index);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (widget.selectedIndex == index) {
                    return Colors.white;
                  }
                   return Theme.of(context).primaryColor;
                  },
                ),
              ),
              child: Text(
              maxLines:1,
              widget.sections[index], 
              style:TextStyle(
                
                color: widget.selectedIndex != index ? Colors.white : Theme.of(context).primaryColor)),
            ),
          ),
        ),
      ),
    );
  }
}