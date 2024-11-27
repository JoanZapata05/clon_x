import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: CircleAvatar(
          radius: 90,
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/736x/b2/b7/db/b2b7db91827b3ca055ff307eb625ce6e.jpg"),
          backgroundColor: Colors.black,
        ),
      ),
      title: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/6/60/X_logo_2023.png",
        width: 30,
        height: 30,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0); // Tamaño del AppBar
}
