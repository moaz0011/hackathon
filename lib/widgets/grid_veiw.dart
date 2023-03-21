import 'package:flutter/material.dart';
import '../screens/home_screen3.dart';
// ignore: must_be_immutable
class Gridview extends StatelessWidget {
  String text1;
  String text2;
  IconData icon;
   Gridview(this.icon,this.text1,this.text2, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage3()),
  );
      },
      child: Container(
           decoration: BoxDecoration(
          color: const Color(0xfffafafa),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(icon),
                  const Icon(Icons.toggle_on,color: Color(0xff1F3724),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(text1,style: const TextStyle(color: Color(0xff1F3724,),fontSize: 15,fontWeight: FontWeight.bold),),
                   Text(text2,style: const TextStyle(color: Color(0xff707070),fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}