import 'package:flutter/material.dart';
import 'package:palend/widgets/lenderz_pallet.dart';
class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({Key? key}) : super(key: key);

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? isChecked = false;
  Widget build(BuildContext context) {
    
    return Container(
      height: 40,
      child: Checkbox(
          side: const BorderSide(color: Colors.red, width: 1.5,),
          value: isChecked,
                activeColor: Colors.blueAccent,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                },
      )
    );
    
  }
}
