import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/drawer_model.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_drawer_widgets/drawer_item.dart';

class DrawerItemsList extends StatefulWidget {
  final List<DrawerModel> items;
  const DrawerItemsList({
    super.key,
    required this.items,
  });

  @override
  State<DrawerItemsList> createState() => _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return DrawerItem(
          drawerModel: widget.items[index],
          isSelected: selectedIndex == index,
          onCLick: () {
            setState(() {
              if (selectedIndex != index) {
                selectedIndex = index;
              }
            });
          },
        );
      },
    );
  }
}
