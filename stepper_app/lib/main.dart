import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => new _MyStepperState();
 }


class _MyStepperState extends State<MyStepper> {

  int _currentStep = 0;
  List<Step> mySteps = [
    new Step(
      title: new Text("Paso 1"),
      content: new Text("Aprender Flutter")
    ),
    new Step(
      title: new Text("Paso 2"),
      content: new Text("Publicar App")
    ),
    new Step(
      title: new Text("Paso 3"),
      content: new Text("Ganar")
    ),

  ];


  @override
  Widget build(BuildContext context) {
   return new Container(
     child: new Scaffold(
       appBar: new AppBar(
         title: new Text("Stepper Demo"),
       ),
       body: new Container(
         child: new Stepper(
           currentStep: this._currentStep,
           steps: mySteps,
           type: StepperType.horizontal,
           onStepContinue: (){
             setState(() {
                 _currentStep < mySteps.length -1? _currentStep ++:_currentStep =0; 
             });
           },
           onStepCancel:  (){
             setState(() {
                 _currentStep > 0? _currentStep --:_currentStep = 0; 
             });
           },
           onStepTapped: (step){
              setState(() {
                _currentStep = step;
              });
           },
         ),
       ),
     ),
   );
  }
}