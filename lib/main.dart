import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/camera': (context) => Camera(),
        '/musica': (context) => Musica(),
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeiro App'),
      ),
      body: Text('Olá Mundo'),
      bottomNavigationBar: BottomBar(_index, _onTap),
    );
  }

  void _onTap(int value) {
    setState(() {
      _index = value;
    });
    _navigation(value, context);
  }
}

void _navigation(index, context) {
  switch (index) {
    case 0:
      debugPrint('1');
      Navigator.pushReplacementNamed(context, '/');
      break;
    case 1:
      debugPrint('2');
      Navigator.pushReplacementNamed(context, '/camera');
      break;
    case 2:
      debugPrint('3');
      Navigator.pushReplacementNamed(context, '/musica');
  }
}

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  int _index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: const Text('Primeiro App'),
          ),
      body: Text('Camera'),
      bottomNavigationBar: BottomBar(_index, _onTap),
    );
  }

  void _onTap(int value) {
    setState(() {
      //_index = value;
    });
    _navigation(value, context);
  }
}

class Musica extends StatefulWidget {
  @override
  _MusicaState createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  int _index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeiro App'),
      ),
      body: Text('Música'),
      bottomNavigationBar: BottomBar(_index, _onTap),
    );
  }

  void _onTap(int value) {
    setState(() {
      //_index = value;
    });
    _navigation(value, context);
  }
}


class BottomBar extends StatelessWidget {
  int _index;
  dynamic _onTap;

  BottomBar(this._index, this._onTap);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Início'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.videocam),
          title: Text('Câmera'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          title: Text('Música'),
        ),
      ],
      onTap: _onTap,
    );
  }
}
