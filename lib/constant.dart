import 'package:flutter/material.dart';

var myAppbar = AppBar(
  title: Text(
    'Responsive UI',
    style: TextStyle(color: Colors.white),
  ),
  centerTitle: true,
  backgroundColor: Colors.grey[900],
);

var myBg = Colors.grey[300];

var myDrawer = Drawer(
  elevation: 0,
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const [
      DrawerHeader(
          child: Icon(
        Icons.favorite,
        size: 50,
      )),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          'D A S H B O A R D',
          style: TextStyle(fontSize: 15),
        ),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text(
          'A C C O U N T',
          style: TextStyle(fontSize: 15),
        ),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text(
          'S E T T I N G S',
          style: TextStyle(fontSize: 15),
        ),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text(
          'L O G O U T',
          style: TextStyle(fontSize: 15),
        ),
      )
    ],
  ),
);
