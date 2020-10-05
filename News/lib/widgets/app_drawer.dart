import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            // decoration: BoxDecoration(color: ),
            child: Text(
              "Shrikant!",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Latest News', Icons.explore, () {}),
          buildListTile('My Favorites', Icons.favorite, () {}),
          buildListTile('Setting', Icons.settings, () {}),
          buildListTile('Share App', Icons.share, () {}),
          buildListTile('Terms & Conditions', Icons.assistant_photo, () {}),
          buildListTile('Logout', Icons.lock_open, () {}),
        ],
      ),
    );
  }
}