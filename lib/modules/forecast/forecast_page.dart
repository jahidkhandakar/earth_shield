import 'package:flutter/material.dart';

class ForecastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forecast")),
      body: Center(child: Text("Weather & Climate Forecast")),
    );
  }
}