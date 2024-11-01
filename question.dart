import 'package:new_work/model/quize_question.dart';

const question = [

  QuizeQuestion('what are the main building block of flutter UI?',
      ['Widget',
      'Function',
      'Component',
      'Block'],
  ),

   QuizeQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
    ]
    ),
  QuizeQuestion('What\'s the purpose of a StatefulWidget?', [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
    ],
    ),
  QuizeQuestion('Which widget should you try to use more often: StatelessWidget or StatefulWidget?', [
    'StatelessWidget',
    'StatefulWidget',
    'Both are equally good',
    'None of the above',
    ],
    ),
 ];