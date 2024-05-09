import 'package:flutter/material.dart';
import 'package:virtual_number/account.dart';
import 'package:virtual_number/calls.dart';
import 'package:virtual_number/messages.dart';
import 'package:virtual_number/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int myIndex = 0;
  List<Widget> widgetList = const [Home(), Calls(), Messages(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => {
          setState(() {
            myIndex = index;
          })
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone_android_outlined,
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        selectedItemColor: Colors.green, // Set selected item color
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true, // Set unselected item color
      ),
      body: IndexedStack(
        children: widgetList,
        index: myIndex,
      ),
    );
  }
}
