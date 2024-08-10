import 'package:flutter/material.dart';
class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Oflutter.com'),
            accountEmail: const Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),ListTile(
            leading: const Icon(Icons.category),
            title: const Text('All Projects'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorites'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
           // leading: Icon(Icons.share),
            title: const Text('Categories'),
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(Icons.draw),
            title: Text('art'),
          ),

          ListTile(
            leading: const Icon(Icons.games),
            title: const Text('Games'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.music_note),
            title: const Text('Music'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.computer),
            title: const Text('Technology'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.support),
            title: const Text('Charity'),
            onTap: () {},
          ),
          const Divider(),

          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
