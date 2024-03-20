import 'package:flutter/material.dart';

import 'custom_drawer_itme.dart';
import 'drawer_item_model.dart';

class CustomDriwerItmesListView extends StatelessWidget {
  const CustomDriwerItmesListView({
    super.key,
    required this.itmes,
  });
  final List<DrawerIconModel> itmes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context , index){
        return CustomDrawerItem(drawerIconModel:itmes[index]);
      },
      itemCount: itmes.length,
    );
  }
}