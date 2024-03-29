import 'dart:math';

class Calculator{
  Calculator(this.height, this.weight){
    _bmi = (weight / pow(height/100, 2));
  }
  final int height;
  final int weight;
  double _bmi = 0;


  String calculateBMI(){
    return _bmi.toStringAsFixed(2);

  }

  String getResults(){
    if(_bmi >=25){
      return 'Overweight';
    }else if(_bmi <= 18.5){
      return 'Underweight';
    }else{
      return 'Normal';
    }

  }
  String getInterpretation(){
    if(_bmi >=25){
     return 'Your BMI is above 25. This suggests that you may have excess body fat, which can increase the risk of health problems such as heart disease, diabetes, and high blood pressure.';
     }else if(_bmi <= 18.5){
      return  'Your BMI falls below 18.5. Being underweight may indicate insufficient body fat, which can lead to health concerns such as weakened immune function and nutrient deficiencies. ';
    }else{
      return 'Your BMI falls within the range of 18.5 to 24.9. This indicates that your weight is considered healthy for your height.';
    }

  }
}