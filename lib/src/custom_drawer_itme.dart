import 'package:flutter/material.dart';

import 'drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerIconModel});

  final DrawerIconModel drawerIconModel;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Icon(drawerIconModel.icons,size: 18,color: Colors.grey,),
      title: Padding(
        padding: const EdgeInsets.only(left:16),
        child: FittedBox(
            alignment:Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child:Text(drawerIconModel.titel,style: const TextStyle(color: Colors.grey),)),
      ),
    );
  }
}

//Creating A Moudel To genrit This ListTile to add Data.

