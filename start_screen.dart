import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FrontScreen extends StatelessWidget{
  const FrontScreen( this.startQuize  ,{super.key});

  final void Function() startQuize;
  @override
  Widget build(context){

    return Center(
      child: Column(
        children: [
          Image.asset(
            'android/assets/quiz-logo.png',
            width: 300,
            height: 500,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
           Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Learn Flutter in the easy way',
                style: GoogleFonts.tiltNeon(
                    color: const  Color.fromARGB(181, 16, 61, 205),
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
                ),
              ),
            ),

          ElevatedButton.icon(
            onPressed: startQuize,
            label: const Text('Start Quize '),
            icon: const  Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }



}