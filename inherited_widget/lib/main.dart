import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CountProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    print("root build");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return const BodyWidget();
        
  }
}

// class CounterProvider extends InheritedWidget {
//   const CounterProvider(
//       {required this.incrementCounter,
//       required this.count,
//       super.key,
//       required super.child});
//   final int count;
//   final Function() incrementCounter;

//   static CounterProvider? _maybeOf(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
//   }

//   static CounterProvider of(BuildContext context) {
//     final CounterProvider? result = _maybeOf(context);
//     assert(result != null, 'No CounterProvider found in context');
//     return result!;
//   }

//   @override
//   bool updateShouldNotify(covariant CounterProvider oldWidget) {
//     return oldWidget.count != count;
//   }
// }

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Inherited"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CountProvider>(
              builder: (context, value, child) => Text(
                '${value.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Container()
          ],
        ),
      ),
      floatingActionButton: Consumer<CountProvider>(
        builder: (context, value, child) => FloatingActionButton(
          onPressed: () => value.count++,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class CountProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  set count(int val) {
    _count = val;
    notifyListeners();
  }
}

class TestStateFull extends StatefulWidget {
  const TestStateFull({super.key});

  @override
  State<StatefulWidget> createState() => _TestStateFull();
}

class _TestStateFull extends State<TestStateFull> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
