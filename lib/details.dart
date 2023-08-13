import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caution! you may hear distrubing voices every 24 hours'),
        titleTextStyle: TextStyle(
          color: Colors.red,
          fontSize: 13,
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: SlideCountdown(
          duration: Duration(days: 4),
          separatorType: SeparatorType.title,
         separatorStyle: const TextStyle(
           fontSize: 22,
           fontFamily: 'handjet',
           color: Colors.white,
         ),
         textStyle: TextStyle(
           color: Colors.red,
           fontSize: 30,
         ),
         decoration: BoxDecoration(
         ),
        ),
      ),
    );
  }
}
