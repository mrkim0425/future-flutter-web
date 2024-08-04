import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              context.pop();
              context.go('/');
            },
          ),
          ListTile(
            title: const Text('Code of Conduct'),
            onTap: () {
              context.pop();
              context.go('/coc');
            },
          ),
        ],
      ),
    );
  }
}
