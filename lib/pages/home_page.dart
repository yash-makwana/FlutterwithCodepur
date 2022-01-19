import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
        // backgroundColor: Colors.green,
        shadowColor: Colors.black26,
        titleSpacing: 100,
      ),
      body:  Center(
                child: Container(
          child: Text("Welcome to flutter",
           ),
          ),
        ),
        drawer: Drawer(),
    );
  }
}