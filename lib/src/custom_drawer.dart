import 'package:flutter/material.dart';
import 'custom_driwer_itmes_listview.dart';
import 'drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  // and Used DrawerIconModel To Pass Data to List
  //static const Used With const Drawer to Creating itmes ,
static const List<DrawerIconModel>itmes = [
  DrawerIconModel(
      titel: 'D A S H B O R D',
      icons: Icons.home_filled,
  ),
  DrawerIconModel(
      titel: 'S E T T I N G S',
      icons: Icons.settings,
  ),
  DrawerIconModel(
      titel: 'A B O U T',
      icons: Icons.info,
  ),
  DrawerIconModel(
      titel: 'L O G O U T',
      icons: Icons.logout_rounded,
  ),
];
  @override
  Widget build(BuildContext context) {
    return  const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.verified_outlined,size:56,color:Colors.white,),),
          SizedBox(height: 16,),
          CustomDriwerItmesListView(itmes: itmes),
        ],
      ),
    );
  }
}


