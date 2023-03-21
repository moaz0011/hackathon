import 'package:flutter/material.dart';
import 'package:hackathon/screens/home_screen3.dart';

class GridView1 extends StatelessWidget {
  const GridView1({super.key});

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
          color: const Color(0xff1F3724),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: const [
                  Icon(Icons.lightbulb,color: Color(0xffC0A11B),),
                  Icon(Icons.toggle_on,color: Color(0xffC0A11B),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  const [
                  Text("Lighting",style: TextStyle(color: Color(0xffC0A11B,),fontSize: 15,fontWeight: FontWeight.bold),),
                   Text("12 Watt",style: TextStyle(color: Color.fromARGB(255, 112, 112, 112),fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}