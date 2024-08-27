import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
      Color _color = Colors.red;
    void _onColorChange() {
      setState(() {
        if (_color == Colors.red) {
          _color = Colors.blue;
        } else {
          _color = Colors.red;
        }
      });
    }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Container(
              color: _color,
              child: GestureDetector(
                onTap: _onColorChange,
              )),
        ));
  }
}

// class ChatBox extends LeafRenderObjectWidget {
//   final String text;

//   const ChatBox({super.key, required this.text});
//   @override
//   RenderObject createRenderObject(BuildContext context) {
//     // TODO: implement createRenderObject
//     throw UnimplementedError();
//   }
//   @override
//   void updateRenderObject(BuildContext context, covariant RenderObject renderObject) {
//     // TODO: implement updateRenderObject
    
    
//   }
// }
