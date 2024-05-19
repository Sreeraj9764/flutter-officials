import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Column(children: [
            Container(
              width: 130,
              decoration: BoxDecoration(
                color: Colors.green[200],
              ),
              child: ValueListenableBuilder(
                valueListenable: _controller,
                builder: (context, value, child) =>
                    ChatBox(text: _controller.text),
              ),
            ),
            TextFormField(
              controller: _controller,
            ),
          ]),
        ));
  }
}

class ChatBox extends LeafRenderObjectWidget {
  final String text;

  const ChatBox({super.key, required this.text});
  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    throw UnimplementedError();
  }
  @override
  void updateRenderObject(BuildContext context, covariant RenderObject renderObject) {
    // TODO: implement updateRenderObject
    
    
  }
}
