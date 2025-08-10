import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import 'forecast_controller.dart';

class ForecastPage extends StatelessWidget {
  final controller = Get.put(ForecastController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forecast")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Temperature: ${controller.temperature}°C"),
              Text("Humidity: ${controller.humidity}%"),
              SizedBox(height: 30),
              Text("Temperature Chart"),
              SizedBox(height: 10),
              AspectRatio(
                aspectRatio: 1.7,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: true),
                    titlesData: FlTitlesData(show: true),
                    borderData: FlBorderData(show: true),
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 28),
                          FlSpot(1, 29),
                          FlSpot(2, 30),
                          FlSpot(3, controller.temperature.value),
                        ],
                        isCurved: true,
                        gradient: LinearGradient(colors: [Colors.green]),
                        barWidth: 4,
                        dotData: FlDotData(show: true),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
