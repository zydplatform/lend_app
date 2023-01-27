import 'package:flutter/material.dart';
import 'package:palend/widgets/lenderz_pallet.dart';
import 'package:palend/widgets/checkbox_widget.dart';

import 'package:palend/widgets/button_raised.dart';
import 'package:palend/widgets/targetinvest_widget.dart';
import '../models/target_list.dart';
import 'package:palend/widgets/stepper.dart';
import '../pages/mytargetloans.dart';
import '../pages/target_investment.dart';
import '../widgets/appbar.dart';

import 'stepper.dart';

// class MyStepWizard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Stepper Demo'),
//     );
//   }
// }

class MyStepWizard extends StatefulWidget {
  //MyStepWizard({required Key key, required this.title}) : super(key: key);
  //final String title;

  @override
  _MyStepWizardState createState() => _MyStepWizardState();
}

class _MyStepWizardState extends State<MyStepWizard> {
  int currentStep = 1;
  int stepLength = 4;
  late bool complete;

  next() {
    if (currentStep <= stepLength) {
      goTo(currentStep + 1);
    }
  }

  back() {
    if (currentStep > 1) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
     if (currentStep > stepLength) {
      setState(() => complete = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        height: 50,
        color: Palette.mybuttonColors,
        child: Text(''),
      ),
      body: Container (
        height: 1000,
        color: Colors.white,
        child:Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          NumberStepper(
            totalSteps: stepLength,
            stepName: 'Automate',
            width: MediaQuery.of(context).size.width,
            curStep: currentStep,
            stepCompleteColor: Colors.blue,
            currentStepColor: Color(0xffdbecff),
            inactiveColor: Color(0xffbababa),
            lineWidth: 3.5,
          ),
          SizedBox(
           // height: 10,
          ),
          Container(
            height: 655,
            child: currentStep <= stepLength
                ? 
                // Text(
                //     "Step $currentStep",
                //     style: TextStyle(
                //       fontSize: 30,
                //       color: Colors.blue,
                //     ),
                //   )
                   MyTargetLoans()
                  
                : 
                Text(
                    "Completed!",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  )
                //TargetInvestScreen()
                  ,
          ),
          
        //MyTargetLoans(),
        Container( 
          
          width: 350,
          color: Colors.white,
          child:Row(
          
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Expanded(
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //         //onSurface: Colors.blue,
          //         disabledForegroundColor: Colors.grey[50]),
          //     //disabledColor: Colors.grey[50],
          //     onPressed: currentStep == 1
          //         ? null
          //         : () {
          //             // back();
          //           },
          //     child: Text('Back'),
          //   ),
          // ),
          //MyTargetLoans(),
          Expanded(
            
              child: FloatingActionButton.extended(
                
        elevation: 20,
        onPressed: () {
            next();

        },
        label: Text(currentStep == stepLength ? 'Finish' : 'Next',
                ),
        backgroundColor: Palette.mybuttonColors,
        
        icon: Icon(Icons.keyboard_double_arrow_right),
      
        //Keyboard Double Arrow Right
        //Icon(Icons.arrow_forward_sharp),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        
              
      
        
      ),



            // child: ElevatedButton(
            //   onPressed: () {
            //     next();
            //   },
            //   child: Text(
            //     currentStep == stepLength ? 'Finish' : 'Next',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   style: ElevatedButton.styleFrom(
            //       //onSurface: Colors.blue,
            //       foregroundColor: Colors.blue),
            // ),
          )
        ],
      ),
        )
        ])
      )
    );
  }
}
