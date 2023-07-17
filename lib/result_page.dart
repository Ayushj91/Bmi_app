import 'package:bmi_app/input_page.dart';
import 'package:bmi_app/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.bmiResult, required this.interpretText, required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: activeCardColor,
                cardChild:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: TextStyle(color: Color(0xFF24D876),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                    ),
                    Text(bmiResult, style:TextStyle(
                         fontSize: 100,
                         fontWeight: FontWeight.bold
                    )
                    ),
                    Text(interpretText,
                    textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 20.0,
                    ))
                  ],
                ),
              ),
            ),
            BottomButton(text: 'RE-CALCULATE',
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>InputPage()
                
                )
                );
            },
            )
          ],
        ));
  }
}
