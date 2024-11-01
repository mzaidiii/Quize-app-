import 'package:flutter/material.dart';
import 'package:new_work/start_screen.dart';
import 'package:new_work/question.dart';
import 'package:new_work/data/question.dart';
import 'package:new_work/results_screen.dart';

class QuizePage extends StatefulWidget{
  const QuizePage ({super.key});
  @override
  State<QuizePage> createState() {
    return _QuizePageState();
  }
}

class _QuizePageState extends State<QuizePage>{
  final List<String> selectedAnswer=[];
 var ActiveScreen ='start-screen';

  void SwitchScreen() {
    setState((){
      ActiveScreen = 'Question-screen';
    });
  }

  void chooseAnswer (String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length== question.length){
      setState(() {
        ActiveScreen='result-screen' ;
      });
    }
  }

  @override
  Widget build(context){
    Widget startScreen = FrontScreen(SwitchScreen);


    if (ActiveScreen== 'Question-screen'){
      startScreen =  Question(onSlectAnswer: chooseAnswer);
    }

    if ( ActiveScreen=='result-screen'){
      startScreen= ResultScreen(choosenAnswer: selectedAnswer, restartQuize: () {
        startScreen;
      },);
    }

    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [ Color.fromARGB(255, 181, 18, 94),
              Color.fromARGB(255, 18, 182, 163),])

          ),
          child: startScreen,
        ),
      ),
    );
  }

}