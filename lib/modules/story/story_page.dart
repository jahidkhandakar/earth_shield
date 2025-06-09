import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Story Mode")),
      body: Center(child: Text("Flood story / journey visualization")),
    );
  }
}