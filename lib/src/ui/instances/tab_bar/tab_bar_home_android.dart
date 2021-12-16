import 'package:flutter/material.dart';

List<Widget> homeTab = [
  Tab(text: 'Personnages'),
  Tab(text: 'Aventures'),
  Tab(
    child: Column(
      children: [
        Expanded(child: Text('Aventures')),
        Expanded(child: Text('solo')),
      ],
    ),
  ),
];
