import 'package:flutter/material.dart';
import 'chip_category.dart';

class ChipList extends StatefulWidget {
  final List<Map> categories;

  const ChipList({Key? key, required this.categories}) : super(key: key);

  @override
  _ChipListState createState() => _ChipListState();
}

class _ChipListState extends State<ChipList> {
  callback(String name) {
    setState(() {
      for (var c in widget.categories) {
        c['isActive'] = c['name'] == name;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        for (var item in widget.categories)
          ChipCategory(
            name: item['name'],
            isActive: item['isActive'],
            callback: callback,
          )
      ],
    );
  }
}
