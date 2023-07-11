import 'package:flutter/material.dart';
import 'package:toodoo/Homepage.dart';
import 'package:toodoo/forgetpassword.dart';

import 'edit task.dart';
import 'mytask.dart';
import 'newtask.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int myIndex=0;
  final pages =[
    Homepg(),
    Newtask(),
    Mytask(),
    Edittask(),
    Forget(),
  ];
  void onTabTapped(int index) {
    setState(() {
      myIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body:pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: myIndex,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.cyan,),
            label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month,color: Colors.cyan,),
            label: 'calender'),
        BottomNavigationBarItem(icon: Icon(Icons.messenger_outline,color: Colors.cyan,),
            label: 'message'),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.cyan,),
            label: 'person'),

      ],),
    );
  }
}
