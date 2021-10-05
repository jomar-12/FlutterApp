import 'package:flutter/material.dart';

class ChipCategory extends StatelessWidget {
  final bool isActive;
  final String name;
  final Function callback;

  const ChipCategory(
      {Key? key,
      required this.isActive,
      required this.name,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: ActionChip(
        onPressed: () {
          callback(name);
        },
        backgroundColor: isActive ? Colors.amber.shade800 : Colors.grey,
        label: Text(name),
        labelStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
