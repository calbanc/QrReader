import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final currentindex=0;
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentindex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map_rounded),
          label:'Mapa'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label:'Direcciones'
        ),
      ]
    );
  }
}