import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EarthShield Dashboard'),
      ),
      body: Center(
        child: Text('Welcome to EarthShield!'),
      ),
    );
  }
}