import 'package:flutter/material.dart';
import 'package:palend/pages/list_tile.dart';
import 'package:palend/pages/popup.dart';
import 'package:palend/pages/steps_screen.dart';
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
import 'package:palend/models/listtilemodel.dart';

import '../widgets/appbar.dart';
import '../widgets/lenderz_pallet.dart';

class MyTargetLoans extends StatefulWidget {
  @override
  _MyTargetLoans createState() => new _MyTargetLoans();
}

class _MyTargetLoans extends State<MyTargetLoans> {
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;


    return new Scaffold(
     
      backgroundColor: Color.fromARGB(240, 250, 249, 249),
    
      body: 
      
      Container(
         padding: EdgeInsets.fromLTRB(35,50,35,0),
        //height: 2000,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("Target Investment", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize:25),),
                
                PopFilter(),
                
              ],
              
            ),
            SizedBox(height: 40,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("Amount/Period", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("ROI(Profit)",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
               Text("+3",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              ],
            ),

            SizedBox( 
            height: 480, 
            //width: 580,
            child:SelectInvestment(),),
            SizedBox(height: 20,),
            // SizedBox(
              
            //   width: 370,
              
            //   child: FloatingActionButton.extended(
            //   elevation: 20,
            //   label: Text('Next', style: TextStyle(color: Colors.white),),
            //   backgroundColor: Palette.mybuttonColors,
            //   icon: Icon(Icons.keyboard_double_arrow_right),
              
            
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   onPressed: () {},

            // ),
            // )
          ],
        ),
        )
    );
  }

 
}
