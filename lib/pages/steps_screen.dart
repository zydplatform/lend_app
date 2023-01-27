import 'package:flutter/material.dart';
import 'package:palend/pages/target_investment.dart';
import 'package:palend/widgets/lenderz_pallet.dart';
import '../models/target_list.dart';
import '../widgets/appbar.dart';
import 'package:palend/classes/targetlist_details.dart';

import 'package:palend/classes/language_constants.dart';

import '../widgets/targetinvest_widget.dart';
import 'package:palend/widgets/step_wizard.dart';
import 'popup.dart';

class StepScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InitState();
}

class _InitState extends State<StepScreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    //final Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        height: 50,
        color: Palette.mybuttonColors,
        child: Text(''),
      ),
      body: Stepper(
        type: StepperType.horizontal,
        steps: getSteps(),
        currentStep: currentStep,
        // onStepContinue(){
        //   final isLastStep = currentStep == getSteps().length -1;

        //   if(isLastStep){
        //     print('Completed');
        //   }
        //   else{
        //   setState(()=>currentStep +=1);
        //   }
        // },
        onStepCancel:
            currentStep == 0 ? null : () => setState(() => currentStep -= 1),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          title: Text('Automate'),
          content: SizedBox(
            //child: Column(children: [
              
             //child: TargetInvestScreen(),
             //PopFilter()
             
             //]
             height: 200,
             ),
            
          ),
        

        Step(
          isActive: currentStep >= 1,
          title: Text('Total Investment'),
          content: Container(),
        ),
        Step(
          isActive: currentStep >= 2,
          title: Text('Contact'),
          content: Container(),
        ),

        // Step(
        //   title: Text('Submit'),
        //   content: Container(),
        // ),
      ];
}
