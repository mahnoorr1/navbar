import 'package:flutter/material.dart';
import './navbar/inspired/inspired.dart';
import './navbar/bottom_bar_inside.dart';
import 'package:navbar/Chat/chatMain.dart';
import 'package:navbar/Drills/drillsMain.dart';
import 'package:navbar/Profile/profileMain.dart';
import 'package:navbar/Progress/progressMain.dart';
import 'package:navbar/navbar/bottombar.dart';
import 'package:navbar/navbar/styles/chipstyle.dart';
import 'package:navbar/navbar/tab_item.dart';

const List<TabItem> items = [
  TabItem(
    icon: Icons.sports_basketball_outlined,
    title: 'Drills',
  ),
  TabItem(
    icon: Icons.chat_bubble_outline,
    title: 'Chat',
  ),
  TabItem(
    icon: Icons.show_chart,
    title: 'Progress',
  ),
  TabItem(
    icon: Icons.person_outline_sharp,
    title: 'Me',
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int visit = 0;
  double height = 20;
  Color colorSelect = const Color.fromRGBO(171, 124, 230, 1);
  Color color = const Color.fromARGB(255, 150, 151, 152);
  Color color2 = const Color.fromARGB(255, 150, 151, 152);
  Color bgColor = const Color.fromRGBO(255, 255, 255, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: _buildPage(visit),
      ),
      bottomNavigationBar: BottomBarInspiredInside(
        items: items,
        backgroundColor: bgColor,
        color: color2,
        colorSelected: Colors.white,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
        }),
        chipStyle: const ChipStyle(convexBridge: true),
        animated: false,
      ),
    );
  }

  Widget _buildPage(int index) {
    if (index == 0) {
      return const DrillsScreen();
    } else if (index == 1) {
      return const ChatScreen();
    } else if (index == 2) {
      return const ProgressScreen();
    } else if (index == 3) {
      return const ProfileScreen();
    } else {
      return Container();
    }
  }
}
