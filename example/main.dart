import 'package:flutter/material.dart';
import 'package:link/link.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Navigation Bar example project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LinkExample(),
    );
  }
}

class LinkExample extends StatelessWidget {
  const LinkExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Link(
              child: Text(
                'Press here to navigate the flutter main page on the web',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              url: 'https://flutter.dev/',
            ),
          ),
        ),
      ),
    );
  }
}
