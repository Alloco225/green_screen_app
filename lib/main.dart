import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ecran Vert',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int colorIndex = 0;
  //
  List<Color> colors = [
    const Color(0xFF00FF00),
    const Color(0xFFFF0000),
    const Color(0xFF0000FF),
  ];
  changeColor() {
    setState(() {
      colorIndex++;
      if (colorIndex > colors.length - 1) {
        colorIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onLongPress: changeColor,
        child: Container(
          color: colors[colorIndex],
        ),
      ),
    );
  }
}
