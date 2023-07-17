


import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});
    final int height;
    final int weight;
    late double _bmi;

   String calculateBMI(){
     _bmi= weight/pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
    
   }
   String getResult(){
    if(_bmi >=25){
      return 'OVERWEIGHT';
    }
    else if(_bmi<18.5){
      return 'UNDERWEIGHT';
    }
    else{
      return "NORMAL";
    }
   }
   
   String getInterpretation(){
    if(_bmi >=25){
      return 'Kam khaa bhai, fatt jaayega!';
    }
    else if(_bmi<18.5){
      return 'Kuposhit hai tu!';
    }
    else{
      return "Kahi to top maar bhai?!";
    }
   }
   
}