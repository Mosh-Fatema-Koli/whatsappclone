import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MassagePage extends StatelessWidget {
  const MassagePage({super.key});
  static const styleSender = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: Color.fromRGBO(225, 255, 199, 1.0),
  );
  static const styleRecever = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Gap(5),
        Bubble(
          alignment: Alignment.center,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleRecever,
          showNip: true,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleRecever,
          showNip: true,
          child: Text('Hi, developer!'),
        ),
      ],
    );
  }
}
