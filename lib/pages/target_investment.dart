import 'package:flutter/material.dart';
import 'package:palend/pages/popup.dart';
import 'package:palend/widgets/lenderz_pallet.dart';
import '../models/target_list.dart';
import '../widgets/appbar.dart';
import 'package:palend/classes/targetlist_details.dart';

import 'package:palend/classes/language_constants.dart';

import '../widgets/checkbox_widget.dart';
import '../widgets/targetinvest_widget.dart';
import 'package:palend/widgets/step_wizard.dart';

class TargetInvestScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<TargetInvestScreen> {
  final listKey = GlobalKey<AnimatedListState>();
  final List<ListItem> items = List.from(listItems);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        height: 50,
        color: Palette.mybuttonColors,
        child: Text(''),
      ),
      
      body: SingleChildScrollView(
      
      
      child:Column( 
        
        
        children: [
      
      
      Container(
            height: 80,
            padding: EdgeInsets.fromLTRB(35,50,35,0),

             child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("Amount/Period", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("ROI(Profit)",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
               Text("+3",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              ],
            ),

             
          ],
        ),
           
      ),

      GestureDetector(
                        
        child: Container(
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffEEEEEE)), (new Color(0xffEEEEEE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),//0xffB0B0B0
                      blurRadius: 10,
                      color: Color(0xffEEEEEE)
                    )
                    
                  ],

                ),
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 120,
            width: double.maxFinite,
            child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             
              children: <Widget>[
               
                Text("UGX 58,005,000", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("UGX",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                ClipRect(child:CheckboxWidget()),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                 Text("3 months          ", style: TextStyle(color: Colors.black),),
                Text("14,207,800",  style: TextStyle(color: Colors.black),),
                Text("")
              ],
            ),


          ],
        ),
      ),
            
    )
      ),
      ),
      Container(
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffEEEEEE)), (new Color(0xffEEEEEE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),//0xffB0B0B0
                      blurRadius: 10,
                      color: Color(0xffEEEEEE)
                    )
                    
                  ],

                ),
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 120,
            width: double.maxFinite,
            child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("UGX 90,005,000", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("UGX",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                ClipRect(child:CheckboxWidget()),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                 Text("6 months          ", style: TextStyle(color: Colors.black),),
                Text("20,207,800",  style: TextStyle(color: Colors.black),),
                Text("")
              ],
            ),


          ],
        ),
      ),
            
    )
      ),
     Container(
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffEEEEEE)), (new Color(0xffEEEEEE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),//0xffB0B0B0
                      blurRadius: 10,
                      color: Color(0xffEEEEEE)
                    )
                    
                  ],

                ),
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 120,
            width: double.maxFinite,
            child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("UGX 78,005,000", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("UGX",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                ClipRect(child:CheckboxWidget()),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                Text("3 months          ", style: TextStyle(color: Colors.black),),
                Text("14,207,800",  style: TextStyle(color: Colors.black),),
                Text("")
              ],
            ),


          ],
        ),
      ),
            
    )
      ),
      Container(
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffEEEEEE)), (new Color(0xffEEEEEE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),//0xffB0B0B0
                      blurRadius: 10,
                      color: Color(0xffEEEEEE)
                    )
                    
                  ],

                ),
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 120,
            width: double.maxFinite,
            child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("UGX 78,005,000", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("UGX",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                ClipRect(child:CheckboxWidget()),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                 Text("3 months          ", style: TextStyle(color: Colors.black),),
                Text("14,207,800",  style: TextStyle(color: Colors.black),),
                Text("")
              ],
            ),


          ],
        ),
      ),
            
    )
      ),

      Container(
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffEEEEEE)), (new Color(0xffEEEEEE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),//0xffB0B0B0
                      blurRadius: 10,
                      color: Color(0xffEEEEEE)
                    )
                    
                  ],

                ),
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 120,
            width: double.maxFinite,
            child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("UGX 23,005,000", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("UGX",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                ClipRect(child:CheckboxWidget()),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                 Text("12 months          ", style: TextStyle(color: Colors.black),),
                Text("19,540,800",  style: TextStyle(color: Colors.black),),
                Text("")
              ],
            ),


          ],
        ),
      ),
            
    )
      ),

Container(
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffEEEEEE)), (new Color(0xffEEEEEE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),//0xffB0B0B0
                      blurRadius: 10,
                      color: Color(0xffEEEEEE)
                    )
                    
                  ],

                ),
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 120,
            width: double.maxFinite,
            child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("UGX 34,305,000", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("UGX",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                ClipRect(child:CheckboxWidget()),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                 Text("6 months          ", style: TextStyle(color: Colors.black),),
                Text("18,307,800",  style: TextStyle(color: Colors.black),),
                Text("")
              ],
            ),


          ],
        ),
      ),
            
    )
      ),

      Container(
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffEEEEEE)), (new Color(0xffEEEEEE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),//0xffB0B0B0
                      blurRadius: 10,
                      color: Color(0xffEEEEEE)
                    )
                    
                  ],

                ),
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 120,
            width: double.maxFinite,
            child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("UGX 80,005,000", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("UGX",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                ClipRect(child:CheckboxWidget()),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                 Text("3 months          ", style: TextStyle(color: Colors.black),),
                Text("23,207,800",  style: TextStyle(color: Colors.black),),
                Text("")
              ],
            ),


          ],
        ),
      ),
            
    )
      ),

Container(
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffEEEEEE)), (new Color(0xffEEEEEE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),//0xffB0B0B0
                      blurRadius: 10,
                      color: Color(0xffEEEEEE)
                    )
                    
                  ],

                ),
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 120,
            width: double.maxFinite,
            child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text("UGX 72,405,000", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                Text("UGX",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                ClipRect(child:CheckboxWidget()),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                 Text("6 months          ", style: TextStyle(color: Colors.black),),
                Text("11,207,800",  style: TextStyle(color: Colors.black),),
                Text("")
              ],
            ),


          ],
        ),
      ),
            
    )
      ),


      ]
      )
      
     
          
      //      Container(
          
      //     child: Column(
      //     children: [
         
      //      Row( 
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
      //       children:<Widget>[ 
      //       Text('Amount/Period', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      //       Text('ROI(Profit', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      //       Text('+3', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      //     ]),
         
      //   AnimatedList(
      //   key: listKey,
      //   initialItemCount: items.length,
      //    shrinkWrap: true,
      //   itemBuilder: ((context, index, animation) => ListItemWidget(
      //         item: items[index],
      //         animation: animation,
      //         //  onClicked: () {},
      //       )),
      // ),
      
      // SizedBox(
      //   width: 370,
        
      //   child: FloatingActionButton.extended(
      //   elevation: 20,
      //   label: Text('Next'),
      //   backgroundColor: Palette.mybuttonColors,
      //   icon: Icon(Icons.keyboard_double_arrow_right),
        
       
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10.0),
      //   ),
      //   onPressed: () {},
              
      
        
      // // ),
      // )
      
      //   )
        //   ])
        )
    );
  }
}
