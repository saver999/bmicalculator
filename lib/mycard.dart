import 'package:flutter/cupertino.dart';

class Mycard extends StatelessWidget {
  const Mycard({ required this.colours, this.cardChild});
  final Color colours;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: cardChild,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colours,
        borderRadius: BorderRadius.circular(12),

      ),
    );
  }
}