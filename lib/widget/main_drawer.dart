import 'package:flutter/material.dart';

import '../route/route_name.dart' as route_name;

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.pink[300]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'My List',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, route_name.homePage, (route) => false),
          ),
          Divider(thickness: 1, color: Colors.pink[300]!.withOpacity(0.3)),
          ListTile(
            title: const Text('Video'),
            onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, route_name.videoPage, (route) => false),
          ),
          Divider(thickness: 1, color: Colors.pink[300]!.withOpacity(0.3)),
          const ListTile(
            title: Text('Empty'),
          ),
          Divider(thickness: 1, color: Colors.pink[300]!.withOpacity(0.3)),
          const ListTile(
            title: Text('Empty'),
          ),
          Divider(thickness: 1, color: Colors.pink[300]!.withOpacity(0.3)),
        ],
      ),
    );
  }
}
