import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UpLoadTextFiled extends StatelessWidget {
  String hint;
  // ignore: prefer_final_fields
  TextEditingController _textEditingController = TextEditingController();
   // ignore: use_key_in_widget_constructors
   UpLoadTextFiled(this.hint,this._textEditingController);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: size.height*0.06,
        width: double.infinity,
        child: TextFormField(

          controller: _textEditingController,
          decoration: InputDecoration(
            
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
            
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color:Color(0xffBC9A09)),
    ),
            filled: true,
            fillColor: const Color(0xffb0b9a7),
            hintText: hint,
            hintStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff1F3724),
            ),
          ),
        ),
      ),
    );
  }
}