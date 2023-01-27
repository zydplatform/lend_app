import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import 'package:palend/pages/target_investment.dart';
import 'package:palend/widgets/lenderz_pallet.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../models/target_list.dart';
import '../widgets/appbar.dart';
import 'package:palend/classes/targetlist_details.dart';

import 'package:palend/classes/language_constants.dart';

import '../widgets/targetinvest_widget.dart';
import 'package:palend/widgets/step_wizard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

class MyRangeSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyRangeSlider();
}

class _MyRangeSlider extends State<MyRangeSlider> {
  double value = 40;
  
  SfRangeValues _values = SfRangeValues(10000.0, 1000000000.0);
  @override
  Widget build(BuildContext context) => SizedBox(
        //padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
       
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top:0.0, bottom: 0.0), //apply padding to all four sides
            //   child: Text(
            //     "Filter",
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
            
           Padding(
                padding: const EdgeInsets.only(top:2.0),
                child: Text(
              'Period',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
              ),
            

           SfSliderTheme(
              data: SfSliderThemeData(
                tooltipBackgroundColor: Colors.black,
                activeTickColor: Palette.mybuttonColors,
                thumbColor: Palette.mybuttonColors,
                activeTrackColor: Colors.grey,
                inactiveTrackColor: Colors.grey,
                activeLabelStyle: const TextStyle(
                    color: Colors.black, fontSize: 12, fontStyle: FontStyle.normal),
                inactiveLabelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontStyle: FontStyle.normal),
              ), child: SfSlider(
        min: 0,
        max: 70,
        showLabels: true,
       showDividers: true, 
        interval: 20,
        value: value,
        labelPlacement: LabelPlacement.onTicks,
        labelFormatterCallback:
            (dynamic actualValue, String formattedText) {
          switch (actualValue) {
             case 0:
              return 'Any';
            case 20:
              return '12/m';
            case 40:
              return '6/m';
            case 60:
              return '3/m';
            // case 80:
            //   return '12';
          }
          return actualValue.toString();
        },
        onChanged: (dynamic newValue) {
          setState(
            () {
              value = newValue;
            },
          );
        },
      ),
           ),
           Padding(
                 padding: const EdgeInsets.only(top:20.0),
                child: Text(
                            'Amount',
                            style:
                                TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                          ),
              ),
            
              SfRangeSliderTheme(
              data: SfRangeSliderThemeData(
                tooltipBackgroundColor: Palette.mybuttonColors,
                activeTickColor: Palette.mybuttonColors,
                thumbColor: Palette.mybuttonColors,
                activeTrackColor: Palette.mybuttonColors,
                inactiveTrackColor: Colors.grey,
                activeLabelStyle: const TextStyle(
                    color: Colors.black, fontSize: 12, fontStyle: FontStyle.normal),
                inactiveLabelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontStyle: FontStyle.normal),
              ), child:     SfRangeSlider(
                          min: 10000.0,
                          max: 1000000000.0,
                          //interval: 400000000.0,
                          showLabels: true,
                          
                          enableTooltip: true,
                          values: _values,
                          // labelPlacement: LabelPlacement.onTicks,
                          labelFormatterCallback:
                              (dynamic actualValue, String formattedText) {
                           
                            return actualValue.toString();
                          },
                          onChanged: (SfRangeValues actualValue) {
                              setState(() {
                                  _values = actualValue;
                              });
                        },
                    ),
              )
               
          ],
        ),
      );

}
