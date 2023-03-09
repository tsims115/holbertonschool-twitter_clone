import 'package:flutter/material.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({ Key? key }) : super(key: key);

  @override
  State<ChatsScreen> createState() => ChatsScreenState();
}

class ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomMenuBar(),
    );
  }
}
