import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title = "";

  final int notificationCount = 0;

  CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Roboto',
          letterSpacing: 2.0,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.wallet,
          color: Colors.white60,
          size: 24.0,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        Stack(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            if (notificationCount != null && notificationCount > 0)
              Positioned(
                right: 8.0,
                top: 8.0,
                child: Container(
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16.0,
                    minHeight: 16.0,
                  ),
                  child: Text(
                    '$notificationCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
