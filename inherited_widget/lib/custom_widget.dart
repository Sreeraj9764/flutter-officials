import 'package:flutter/material.dart';

abstract class CustomWidget extends Widget {
  const CustomWidget({super.key});
}

class TestWidget extends CustomWidget {
  const TestWidget({super.key});

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}
