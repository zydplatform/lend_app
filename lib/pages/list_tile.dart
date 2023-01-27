import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:palend/models/listtilemodel.dart';

import '../widgets/appbar.dart';
import '../widgets/lenderz_pallet.dart';

class SelectInvestment extends StatefulWidget {
  @override
  SelectInvestmentState createState() => new SelectInvestmentState();
}

class SelectInvestmentState extends State<SelectInvestment> {
  List<TargetInvestmentModel> checkBoxListTileModel =
      TargetInvestmentModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    //  appBar: MyAppBar(
    //     height: 50,
    //     color: Palette.mybuttonColors,
    //     child: Text(''),
    //   ),
      //backgroundColor: Color.fromARGB(240, 250, 249, 249),
      backgroundColor: Colors.transparent,
      
      body: 
      new ListView.builder(
          itemCount: checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              
              child: new Container(
               
                //color: Color.fromRGBO(255, 255, 255, 1),
                 decoration: BoxDecoration(
                      
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(5),
                      
                      
            
            ), //BoxDecoration
                //margin: new EdgeInsets.all(10),
                padding: new EdgeInsets.all(10.0),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                 
                  children: <Widget>[

                    
                    new CheckboxListTile(
                        activeColor: Colors.blue[400],
                         side: const BorderSide(color: Colors.grey, width: 1.5),
                        dense: true,
                        
                        //font change
                        title: new Text( 
                          checkBoxListTileModel[index].currency,
                          style: TextStyle(
                              fontSize: 15,color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5),
                        ),
                        subtitle: new Text( 
                          checkBoxListTileModel[index].profit,
                          style: TextStyle(
                              fontSize: 12,color: Colors.black,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5),
                        ),
                        value: checkBoxListTileModel[index].isCheck,
                        secondary: Container(
                          
                          
                          child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           
                            children: [
                            SizedBox(height: 8,),
                            Flexible(
                              fit: FlexFit.loose,
                              child: 
                            new Text(
                          checkBoxListTileModel[index].loanAmount,
                          style: TextStyle(
                              fontSize: 15,color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5),
                        ),),

                         SizedBox(height: 7,),
                         Flexible(
                              fit: FlexFit.loose,
                              child: 
                         new Text(
                          checkBoxListTileModel[index].loanPeriod,
                          style: TextStyle(
                              fontSize: 12,color: Colors.black,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5),
                        ),),
                        ]),
                        ),
                        
                        onChanged: (val) {
                          itemChange(val!, index);
                        })
                  ],
                ),
              ),
            );
          }),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}
