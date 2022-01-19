import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
        // backgroundColor: Colors.green,
        shadowColor: Colors.black26,
        titleSpacing: 100,
      ),
      body:  const Center(
          child: Text("Welcome to flutter"),
          ),
        
        drawer: const Drawer(),
        );
  }
}