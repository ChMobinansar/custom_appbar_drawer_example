import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  final Function()? onLeadingTapped;
  final Icon? trailingIcon;

  AppBarScreen({
    required this.onLeadingTapped,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      elevation: 0,
      leading: onLeadingTapped != null
          ? IconButton(
              onPressed: onLeadingTapped,
              icon: Icon(
                Icons.menu,
              ),
            )
          : Container(),
      iconTheme: IconThemeData(
        color: Colors.orange,
      ),
      actions: [
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 50, width: 80, child: Image.asset("assets/niyah.png")),
          ],
        ),
        SizedBox(
          width: 90,
        ),
        Image.asset(
          "assets/niyah.png",
          height: 30,
          width: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/niyah.png",
          height: 30,
          width: 30,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          child: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          backgroundColor: Colors.grey[300],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
