import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class target extends StatefulWidget {
  const target({Key? key}) : super(key: key);

  @override
  State<target> createState() => _targetState();
}

class _targetState extends State<target> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color.fromARGB(255, 0, 87, 217),
        child: const Icon(Icons.edit_rounded),
      ),
    );
  }
}
