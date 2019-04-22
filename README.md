# Link

# Just a simple link-alike widget for Flutter

Although simple, Flutter lacks a linkable widget out of the box, so I decided to build my own. No fancy code, but it does its job. That's all I asked.

It uses an InkWell widget to provide both some visual response to the tap event and a trigger to launch the URL (onTap).

It's not intended to open up all kinds of URLs; it basically depends on your device. But you can be certain http:// and https:// URL will be launched (every device ships a webkit). Instead of throwing an error in case the URL can't be opened, you can use the onError callback at the constructor and do whatever you want to do. I really wanted to keep it simple.

For the launching part, I took the [url_launcher package](https://pub.dartlang.org/packages/url_launcher) available at Dart Pub. A nice, working library I've used in almost every project since I learned about it.

Almost forgot... no idea whether it works on iOS. For the time being, I haven't yet set up the environment ;P. Maybe someday.

# Documentation

**url_launcher**

You can find the url_launcher Flutter package at [Dart Pub](https://pub.dartlang.org/packages/url_launcher), where I plan to submit this very library.

## Let's give it a try

**Installing**

Include `link` in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  link: ^1.0.0
```

If your IDE doesn't do it automatically, type:

`flutter packages get`

**Using**

Import the package in your `dart` file and use `Link` to get the actual icon widget:

```dart
import 'package:link/link.dart';
...
Link _link = Link(
  child: Text('A link'),
  url: 'http://www.google.com',
  onError: _onErrorCallback
);
...
```
OnError is not required and defaults to null, meaning that, in case URL can't be launched, nothing will happen. No error, no alert, nothing.

**Sample**

```dart
import 'package:flutter/material.dart';
import 'package:link/link.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Line Icons Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _showErrorSnackBar() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Oops... the URL couldn\'t be opened!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Link(
          child: Text('This is a link to Flutter'),
          url: 'https://flutter.dev',
          onError: _showErrorSnackBar,
        )
      ),
    );
  }
}
```

## GitHub source code

If you're interested on the code (feel free to modify it anyway you want), you can find it here: https://github.com/galonsos/link
