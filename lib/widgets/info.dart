import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Info extends StatelessWidget {
  String adress;
  String text1;
  String text2;
   Info(this.adress,this.text1,this.text2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Image.asset(adress),
        ),
        Column(
          children: [
            Text( text1,style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.grey),),
             Text( text2,style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),),
          ],
        )
      ],
    ) ;
  }
}