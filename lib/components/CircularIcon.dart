import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  IconData? icon;
  Function? callback;
  double iconSize;
  CircularIcon({Key? key, this.iconSize = 8, this.icon, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(size: iconSize, icon),
        onPressed: () {
          callback!();
        },
      ),
    );
  }
}
