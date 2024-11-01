import 'package:flutter/material.dart';
import 'package:new_work/data/question.dart';
import 'package:new_work/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';


class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key, required this.choosenAnswer, required this.restartQuize});

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary=[];
     for (var i=0; i< choosenAnswer.length;i++){
       summary.add({
         'question_index': i,
         'question' : question[i].text,
         'correct_answer': question[i].answer[0],
         'user_answer': choosenAnswer[i]
       });
     }


    return summary;
  }

  final void Function() restartQuize;

  @override
  Widget build(BuildContext context) {

    final summaryData = getSummaryData();
    final totalNoQuestion= question.length;
    final totalCorrectAnswer= summaryData.where((data) {
      return data['user_answer'] == data ['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
               Text('You answered $totalCorrectAnswer out of $totalNoQuestion Question correctly ',
               style:GoogleFonts.tiltNeon(
                   color: Colors.black87,
                   fontSize: 30,
                   fontWeight: FontWeight.bold
               ),
               ),
              const SizedBox(height: 30,),
              QuestionSummary(summaryData: summaryData),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon (onPressed: restartQuize,
                label: const Text('Restart Quize ',
                style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black
                )
                ),
                icon: const  Icon(Icons.refresh_sharp),
              )
            ]
        ),
      ),
    );
  } }