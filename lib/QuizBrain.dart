
import 'questions.dart';

class QuizBrain {

  int _questionNumber= 0;

//adding an _ underscore encapsulate the property, which means that it cant be accessed except only in the class
  List<Question> _questionSolution = [
    Question(q:'Cole is learning Flutter with Dart', a: true ),
    Question(q:'There are more developers compared to jobs',a: false),
    Question(q: 'Developers are more recognised than designers', a: true),

    Question(q: 'Relevant systems is an African Startup', a: false),

    Question(q: 'Developers are aliens', a: false),

    Question(q: 'Classes are very important when writing OOP language', a: true),

  Question(q: 'polymorphism is a pillar of OOP language', a: true),
    Question(q:'Cole started his internship august', a: true),

    Question (q:'Rosius is a Developer Advocate', a: false),

    Question(q:'Neek is a nun', a : false),
    Question(q: 'Relevant Systems CEO is Neek', a : true)

  ];

  void nextQuestion(){
    if (_questionNumber < _questionSolution.length -1){
      _questionNumber++;
    }
  }
//we create a method( function in a class) that gets the encapsulated property to the getQuestion method
  //which can be called in main.dart and accessed
  String getQuestion (){
  return _questionSolution[_questionNumber].questionText;
  }

  bool getAnswer (){
    return _questionSolution[_questionNumber].questionAnswer;
  }
  bool isFinished(){
    if(_questionNumber == _questionSolution.length-1){
     return true;
    }
    else{
      return false;
    }

  }

void reset(){
    _questionNumber = 0;
  }
}