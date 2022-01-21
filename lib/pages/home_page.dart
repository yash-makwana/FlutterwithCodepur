

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fultter_catelog/models/catalog.dart';
import 'package:fultter_catelog/widgets/drawer.dart';
//import 'package:fultter_catelog/widgets/item_widget.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    loadData();
      }
  void loadData() async{
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
    });
  }

    
      @override
      Widget build(BuildContext context) {
        
        return Scaffold(
          appBar: AppBar(
            title: const Text("Catalog App"),
            
          ),
          body: GridView.builder(
            
            itemCount : CatalogModel.items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing : 12,
              crossAxisSpacing : 12,
              childAspectRatio : 0.8,
              ),
              itemBuilder: (BuildContext context, int index) { 
              final item = CatalogModel.items[index];
               return Card(
                 clipBehavior : Clip.antiAlias,
                 shape : RoundedRectangleBorder(  borderRadius : BorderRadius.circular(10)),
                  child: GridTile(
                    header : Text(item.name),
                    footer: Text(item.price.toString()),
                  child : Image.network(item.image)
                 ),
               );
              
               },
            
            
               
            
             
          ),
            
            drawer: const MyDrawer(),
            );
      }
    
}