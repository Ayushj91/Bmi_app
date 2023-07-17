import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor:const Color(0xFF0A0E21)
      ),
      home: const InputPage(),
    );
  }
}


