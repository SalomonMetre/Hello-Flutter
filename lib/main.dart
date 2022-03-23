import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello World App',
    home: HomeView(),
  ));
}

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

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  static const imageLink =
      'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg';

  onDialogClose() {
    Navigator.pop(context);
  }

  onContactUs() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Contact Us'),
            content: const Text('Email : salomon.kulondwa@gmail.com'),
            actions: [
              TextButton(
                child: const Text('Close'),
                onPressed: onDialogClose,
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            imageLink,
            height: 350,
          ),
          ElevatedButton(
            child: const Text('Contact Us !'),
            onPressed: onContactUs,
          )
        ],
      ),
    );
  }
}
