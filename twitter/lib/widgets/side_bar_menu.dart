import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({ Key? key }) : super(key: key);

  @override
  State<SideBarMenu> createState() => SideBarMenuState();
}

class SideBarMenuState extends State<SideBarMenu> {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
            accountName: Text('UserName', style: TextStyle(color: Colors.grey[600])),
            accountEmail: Text('0 Followers 0 Following', style: TextStyle(color: Colors.grey[900])),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Color(0xFF778899),
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/72327718?s=400&u=2847fff408c1aedc2911047d5f4e47170eb1afe7&v=4'),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
              ),
              title: const Text('Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.list,
              ),
              title: const Text('Lists',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.bookmark,
              ),
              title: const Text('Bookmark',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.flash_on,
              ),
              title: const Text('Moments',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text('Settings and Privacy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help Center',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text('Logout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
    );
  }
}