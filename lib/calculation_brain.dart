import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.height,this.weight});
  final height;
  final weight;
  double _bmi = 0;
  String bmiCalculator () {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);

  }

  String getResult () {
    if(_bmi >= 25) {
      return 'Overweight';
    }
    else if(_bmi >= 18.5){
      return 'Normal';
    }
    else {
      return 'UnderWeight';
    }
  }

  String getInterpretation (){
    if(_bmi >= 25) {
      return 'نقص شوي يا طايب راك تقبتها';
    }
    else if(_bmi >= 18.5){
      return 'راك مليح باين حدايدي';
    }
    else {
      return 'كول شوي يجي شوي ريح يهزك';
    }
  }
}