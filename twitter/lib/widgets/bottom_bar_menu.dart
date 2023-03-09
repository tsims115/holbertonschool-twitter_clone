import 'package:flutter/material.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({ Key? key }) : super(key: key);

  @override
  State<BottomMenuBar> createState() => BottomMenuBarState();
}

class BottomMenuBarState extends State<BottomMenuBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.grey,),
          label: 'Home',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.grey,),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.grey,),
          label: 'notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail, color: Colors.grey,),
          label: 'mail',
        ),        
      ],
      onTap: Navigator(),
    );
  }
}
