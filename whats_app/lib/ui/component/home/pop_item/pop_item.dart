import 'package:flutter/material.dart';
import 'package:whats_app/ui/component/home/pop_item/text_item.dart';

class PopItem extends StatelessWidget {
  const PopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      constraints: BoxConstraints(
        maxHeight: 300,
        maxWidth: 200,
        minWidth: 100,
        minHeight: 100,
      ),
      color: Colors.black,
      elevation: 0,
      offset: const Offset(0, 50),
      icon: const Icon(Icons.more_vert, color: Colors.white),
      itemBuilder:
          (context) => [
            const PopupMenuItem(child: TextItem(text: 'New Group')),
            const PopupMenuItem(child: TextItem(text: 'New Community')),
            const PopupMenuItem(child: TextItem(text: 'New Broadcast')),
            const PopupMenuItem(child: TextItem(text: 'Linked Devices')),
            const PopupMenuItem(child: TextItem(text: 'Starred')),
            const PopupMenuItem(child: TextItem(text: 'Settings')),
          ],
    );
  }
}
