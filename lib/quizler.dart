

import 'package:flutter/material.dart';

void main() => runApp(Scaffold(
  body: SafeArea(
    child:Quiz() ,
  ),
));




QuizBrain quizBrain = QuizBrain();

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  List<Icon> scoreKeeper = [];



  void checkAnswer({required bool userPickedAnswer}) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('you reached to the end'),
          ),
        );

        quizBrain.reset();
        scoreKeeper = [];
      } else {
        bool correctAnswer = quizBrain.getQuestionAnswer();
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      }
    });
    quizBrain.nextQuestion();
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(quizBrain.getQuestionText()),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
              onPressed: () {
                setState(
                      () {
                    checkAnswer(userPickedAnswer: true);
                  },
                );
              },
              child: Text('True'),
            ),
          ),

        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red),
              ),
              onPressed: () {
                setState(() {
                  checkAnswer( userPickedAnswer: false);
                });
              },
              child: Text('False'),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

class Question {
  String questionText;
  bool questionAnswer;
  Question(this.questionText, this.questionAnswer);
}

class QuizBrain {
  List<Question> _quizBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  int _questionNumber = 0;

  bool getQuestionAnswer() {
    return _quizBank[_questionNumber].questionAnswer;
  }

  String getQuestionText() {
    return _quizBank[_questionNumber].questionText;
  }

  nextQuestion() {
    if (_questionNumber < _quizBank.length - 1) {
      _questionNumber++;
    }
  }
  reset() {
    _questionNumber = 0;
  }


  isFinished() {
    if (_questionNumber >= _quizBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
