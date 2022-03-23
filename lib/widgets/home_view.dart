import 'package:flutter/material.dart';

import 'body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Hello World'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
