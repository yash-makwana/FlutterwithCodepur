import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imageUrl = "https://instagram.fbho3-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s640x640/271307540_438773117953321_8879655342985023174_n.jpg?_nc_ht=instagram.fbho3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=pK9biqq6CHYAX_jaPYB&edm=AP_V10EBAAAA&ccb=7-4&oh=00_AT8VXBaEsRrPKdHvRfWUxzO3En8uslZFpaLSK3UxD0E5MA&oe=61F06FEB&_nc_sid=4f375e";
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      
      child: Container(
              color: Colors.grey,
              child: ListView(
                padding: const EdgeInsets.all(0),
          children: [
             DrawerHeader(
              decoration : const BoxDecoration(
                color: Colors.grey,
              ),  
               margin : const EdgeInsets.all(0),
               padding: const EdgeInsets.all(0),
               child: UserAccountsDrawerHeader(
                    decoration : const BoxDecoration(
                      color: Colors.grey,
                    ),
                    accountName : const Text("Yash Makwana"),
                    accountEmail:const Text("yashmakwana40@gmail.com"),
                    currentAccountPicture : CircleAvatar(
                   backgroundImage: NetworkImage(imageUrl),
                 ),
                    ),
                    ),
                    const ListTile(
                    leading :  Icon(
                    CupertinoIcons.home,
                    color:Colors.white),
                    title:  Text("Home", textScaleFactor:1.2 , style:TextStyle(color: Colors.white),),
                  ),
                  const ListTile(
                    leading :  Icon(
                    CupertinoIcons.mail,
                    color:Colors.white),
                    title:  Text("Mail", textScaleFactor:1.2 , style:TextStyle(color: Colors.white),),
                  ),
                  const ListTile( 
                    leading :  Icon(
                    CupertinoIcons.profile_circled,
                    color:Colors.white),
                    title:  Text("Profile", textScaleFactor:1.2 , style:TextStyle(color: Colors.white),),
                  ),

                   ],
                ),
                 
      ),
                   );
                 }
               }
               