import 'package:flutter/material.dart';
import 'package:test_app/textfeild.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int acceptedData = 0;
  List controllerslist = [];
  List<Map<String, double>> positions = [];
  List<Widget> allwidget = [];

  void addwidget() {
    setState(() {
      positions.add({"x": 100.0, "y": 100.0});
    });
    int index = positions.length - 1;
    setState(() {
      allwidget.add(Fields(positions[index]));
    });
    setState(() {
      positions;
      allwidget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          addwidget();
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: Stack(
        children: allwidget,
      ),
    );
  }
}
