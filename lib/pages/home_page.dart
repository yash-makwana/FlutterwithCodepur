import 'package:flutter/material.dart';
import 'package:fultter_catelog/widgets/drawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
        
      ),
      body:  const Center(
          child: Text("Welcome to flutter"),
          ),
        
        drawer: const MyDrawer(),
        );
  }
}