import 'package:flutter/material.dart';
import 'package:palend/pages/range_slider.dart';
import 'package:palend/pages/target_investment.dart';
import 'package:palend/widgets/lenderz_pallet.dart';
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



class PopFilter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PopFilter();
}

class _PopFilter extends State<PopFilter> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          btn1(context),
          
        ],
      ),
    );
  }

  Widget btn1(BuildContext context) {
    return MaterialButton(
      //MyRangeSlider(),
      color: Colors.white,
      minWidth: 10,
      onPressed: () => Dialogs.materialDialog(
          //msg: 'Please select the loan repayment period and loan amount',
          title: "",
          color: Colors.white,
          context: context,
          dialogWidth: kIsWeb ? 0.3 : null,
          onClose: (value) => print("returned value is '$value'"),
          
          actions: [
            
            MyRangeSlider(),
            
           
          ],
          
          
          ),
          
      child:  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Image.asset("images/filter.png"),
                    height: 20,
                    width: 20,
                                        ),
    );
  }

}