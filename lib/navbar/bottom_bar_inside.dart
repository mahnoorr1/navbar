import './inspired/inspired.dart';
import 'package:navbar/navbar/bottombar.dart';
import 'package:navbar/navbar/styles/chipstyle.dart';
import 'package:navbar/navbar/tab_item.dart';
import 'package:flutter/material.dart';

class Inside extends StatefulWidget {
  final List<TabItem> items;
  final ChipStyle? chipStyle;

  const Inside({
    Key? key,
    required this.items,
    this.chipStyle,
  }) : super(key: key);

  @override
  _InsideState createState() => _InsideState();
}

class _InsideState extends State<Inside> {
  int visit = 0;
  Color color = Color.fromARGB(255, 150, 151, 152);
  Color bground = Color.fromRGBO(255, 255, 255, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 67),
          Container(),
          BottomBarInspiredInside(
            items: widget.items,
            backgroundColor: bground,
            color: color,
            colorSelected: Colors.white,
            indexSelected: visit,
            animated: false,
            onTap: (index) => setState(() {
              visit = index;
            }),
            chipStyle: widget.chipStyle ?? const ChipStyle(isHexagon: false),
          ),
        ],
      ),
      bottomNavigationBar: BottomBarInspiredInside(
        items: widget.items,
        backgroundColor: bground,
        color: color,
        colorSelected: Colors.white,
        indexSelected: visit,
        onTap: (index) => setState(() {
          visit = index;
        }),
        chipStyle: widget.chipStyle ?? const ChipStyle(isHexagon: false),
      ),
    );
  }
}
