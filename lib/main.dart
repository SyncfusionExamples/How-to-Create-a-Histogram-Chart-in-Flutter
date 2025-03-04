import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Histogram Chart',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Histogram Chart'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  late List<ChartSampleData> _chartData;

  @override
  void initState() {
    _chartData = _setChartData();
    super.initState();
  }

  List<ChartSampleData> _setChartData() {
    return [
      ChartSampleData(y: 5.250),
      ChartSampleData(y: 7.750),
      ChartSampleData(y: 0.0),
      ChartSampleData(y: 8.275),
      ChartSampleData(y: 9.750),
      ChartSampleData(y: 7.750),
      ChartSampleData(y: 8.275),
      ChartSampleData(y: 6.250),
      ChartSampleData(y: 5.750),
      ChartSampleData(y: 5.250),
      ChartSampleData(y: 23.000),
      ChartSampleData(y: 26.500),
      ChartSampleData(y: 26.500),
      ChartSampleData(y: 27.750),
      ChartSampleData(y: 25.025),
      ChartSampleData(y: 26.500),
      ChartSampleData(y: 28.025),
      ChartSampleData(y: 29.250),
      ChartSampleData(y: 26.750),
      ChartSampleData(y: 27.250),
      ChartSampleData(y: 26.250),
      ChartSampleData(y: 25.250),
      ChartSampleData(y: 34.500),
      ChartSampleData(y: 25.625),
      ChartSampleData(y: 25.500),
      ChartSampleData(y: 26.625),
      ChartSampleData(y: 36.275),
      ChartSampleData(y: 36.250),
      ChartSampleData(y: 26.875),
      ChartSampleData(y: 40.000),
      ChartSampleData(y: 43.000),
      ChartSampleData(y: 46.500),
      ChartSampleData(y: 47.750),
      ChartSampleData(y: 45.025),
      ChartSampleData(y: 56.500),
      ChartSampleData(y: 56.500),
      ChartSampleData(y: 58.025),
      ChartSampleData(y: 59.250),
      ChartSampleData(y: 56.750),
      ChartSampleData(y: 57.250),
      ChartSampleData(y: 46.250),
      ChartSampleData(y: 55.250),
      ChartSampleData(y: 44.500),
      ChartSampleData(y: 45.525),
      ChartSampleData(y: 55.500),
      ChartSampleData(y: 46.625),
      ChartSampleData(y: 46.275),
      ChartSampleData(y: 56.250),
      ChartSampleData(y: 46.875),
      ChartSampleData(y: 43.000),
      ChartSampleData(y: 46.250),
      ChartSampleData(y: 55.250),
      ChartSampleData(y: 44.500),
      ChartSampleData(y: 45.425),
      ChartSampleData(y: 55.500),
      ChartSampleData(y: 56.625),
      ChartSampleData(y: 46.275),
      ChartSampleData(y: 56.250),
      ChartSampleData(y: 46.875),
      ChartSampleData(y: 43.000),
      ChartSampleData(y: 46.250),
      ChartSampleData(y: 55.250),
      ChartSampleData(y: 44.500),
      ChartSampleData(y: 45.425),
      ChartSampleData(y: 55.500),
      ChartSampleData(y: 46.625),
      ChartSampleData(y: 56.275),
      ChartSampleData(y: 46.250),
      ChartSampleData(y: 56.875),
      ChartSampleData(y: 41.000),
      ChartSampleData(y: 63.000),
      ChartSampleData(y: 66.500),
      ChartSampleData(y: 67.750),
      ChartSampleData(y: 65.025),
      ChartSampleData(y: 66.500),
      ChartSampleData(y: 76.500),
      ChartSampleData(y: 78.025),
      ChartSampleData(y: 79.250),
      ChartSampleData(y: 76.750),
      ChartSampleData(y: 77.250),
      ChartSampleData(y: 66.250),
      ChartSampleData(y: 75.250),
      ChartSampleData(y: 74.500),
      ChartSampleData(y: 65.625),
      ChartSampleData(y: 75.500),
      ChartSampleData(y: 76.625),
      ChartSampleData(y: 76.275),
      ChartSampleData(y: 66.250),
      ChartSampleData(y: 66.875),
      ChartSampleData(y: 80.000),
      ChartSampleData(y: 85.250),
      ChartSampleData(y: 87.750),
      ChartSampleData(y: 89.000),
      ChartSampleData(y: 88.275),
      ChartSampleData(y: 89.750),
      ChartSampleData(y: 97.750),
      ChartSampleData(y: 98.275),
      ChartSampleData(y: 96.250),
      ChartSampleData(y: 95.750),
      ChartSampleData(y: 95.250)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildChart(),
    );
  }

  SfCartesianChart _buildChart() {
    return SfCartesianChart(
      series: <CartesianSeries>[
        HistogramSeries<ChartSampleData, double>(
            dataSource: _chartData,
            //showNormalDistributionCurve: true,
            //curveColor: const Color.fromRGBO(192, 108, 132, 1),
            binInterval: 20,
            yValueMapper: (ChartSampleData data, _) => data.y)
      ],
    );
  }

  @override
  void dispose() {
    _chartData.clear();
    super.dispose();
  }
}

class ChartSampleData {
  ChartSampleData({required this.y});
  final double y;
}
