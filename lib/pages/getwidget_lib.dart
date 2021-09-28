import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class GetWidgetLib extends StatelessWidget {
  const GetWidgetLib({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Widget Lib"),
      ),
      body: GFProgressBar(
        percentage: 0.6,
        lineHeight: 20,
        alignment: MainAxisAlignment.spaceBetween,
        child: const Text(
          '80%',
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        leading:
            const Icon(Icons.sentiment_dissatisfied, color: GFColors.DANGER),
        trailing:
            const Icon(Icons.sentiment_satisfied, color: GFColors.SUCCESS),
        backgroundColor: Colors.black26,
        progressBarColor: GFColors.INFO,
      ),
    );
  }
}
