import 'package:flutter/material.dart';

import 'package:social_media_app/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: const MyDrawer(),
    );
  }
}
