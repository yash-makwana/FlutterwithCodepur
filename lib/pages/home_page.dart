

// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:fultter_catelog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fultter_catelog/models/catalog.dart';
//import 'package:fultter_catelog/widgets/drawer.dart';
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
          backgroundColor: MyTheme.creamColor,
          body: SafeArea(
            child: Container(
              padding : Vx.m16,
            child: Column(
              crossAxisAlignment : CrossAxisAlignment.start,
                children: [
                  const CatalogHeader(),
                  if(CatalogModel.items.isNotEmpty)
                    const CatalogList().expand()
                  else
                  const Center(
                    child : CircularProgressIndicator(),
                  )
                ],
            ),
            ),
          ),
        );
      }  
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment : CrossAxisAlignment.start,
        children: [
          "Catalog App".text.xl5.bold.color(MyTheme.bluishColor).make(),
          "Treading Products".text.xl2.make(),

      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap : true,
      itemCount: CatalogModel.items.length ,
      itemBuilder: (BuildContext context, int index) { 
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
       },
      
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
           CatalogImage(
            image :  catalog.image,
            ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(MyTheme.bluishColor).bold.make(),
                catalog.desc.text.xs.make(),
                ButtonBar(
                  alignment:MainAxisAlignment.spaceBetween,
                  buttonPadding : Vx.mH4,  
                  children: [
                    
                    "\$${catalog.price}".text.sm.bold.make(),
                    ElevatedButton(onPressed: () {},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.bluishColor),
                    shape: MaterialStateProperty.all(const StadiumBorder(),),
                    ),
                     child: "BUY".text.make()),
                  ],
                ),
            ],
            ),
            ),
        ],
      ),
    ).white.rounded.square(100).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
        image).box.color(MyTheme.creamColor).make().p16().w32(context);
  }
}












