import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
 const  AnswerButton ({
    super.key,
    required  this.answer,
    required this.onTap,});

  final String answer ;
  final void Function() onTap;
  @override
  Widget build( context) {

    return ElevatedButton(onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10,
          horizontal: 40),
          backgroundColor: const Color.fromARGB(165, 44, 158, 230),
          foregroundColor: Colors.white70
        ),
        child:  Text(answer,textAlign: TextAlign.center,));
  }

}