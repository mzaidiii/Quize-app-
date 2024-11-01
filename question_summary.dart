import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key , required this.summaryData});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((Data) {
            return Row(

              children: [
                CircleAvatar(
                  radius: 12,
                  child :  Text(((Data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                     color: Colors.red,

                  ),
                      textAlign: TextAlign.start),
                ),

                Expanded(
                  child: Column(

                    children: [
                      Text(Data['question'] as String,
                        style:GoogleFonts.alegreyaSansSc(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      const SizedBox(height: 5),
                      Text(Data['correct_answer'] as String,style:GoogleFonts.alegreyaSansSc(
                          color:  const Color.fromARGB(255, 62, 56, 56),
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ) ,
                         ),
                      Text(Data['user_answer'] as String,
                        style:GoogleFonts.alegreyaSansSc(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                      ),
                      textAlign: TextAlign.left,),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );

  }
}