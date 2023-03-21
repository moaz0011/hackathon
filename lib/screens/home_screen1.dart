import 'package:flutter/material.dart';

import '../widgets/grid_veiw.dart';
import '../widgets/grid_view1.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
        Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: size.height*0.05,horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back),
                Icon(Icons.more_vert),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Container(
                color: const Color(0xfffafafa),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        const Text("The Green House",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff1F3724)),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.location_on),
                        Text("Mansoura,Dak",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300,color: Color(0xff707070)),)
                      ],
                    )
                      ],
                    ),
                  
                 Image.asset("assets/map.png",height: 115,width: 150,),
                  ],
                ),
              ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Column(
                 children: [
                   Image.asset("assets/wind.png",color: const Color(0xff1F3724)),
                   const Text("wind",style: TextStyle(fontSize: 13,color: Color(0xff707070),fontWeight: FontWeight.w300),),
                   const Text("5m/s",style: TextStyle(fontSize: 13,color: Color(0xff707070),fontWeight: FontWeight.w300),),
                 ],
               ),
                    Column(
                 children: [
                   Image.asset("assets/tint.png",color: const Color(0xff1F3724),),
                   const Text("Humidity",style: TextStyle(fontSize: 13,color: Color(0xff707070),fontWeight: FontWeight.w300),),
                   const Text("20%",style: TextStyle(fontSize: 13,color: Color(0xff707070),fontWeight: FontWeight.w300),),
                 ],
               ),
                    Column(
                 children: [
                   Image.asset("assets/tree.png",color: const Color(0xff1F3724),),
                   const Text("Plant",style: TextStyle(fontSize: 13,color: Color(0xff707070),fontWeight: FontWeight.w300),),
                   const Text("4 Type",style: TextStyle(fontSize: 13,color: Color(0xff707070),fontWeight: FontWeight.w300),),
                 ],
               ),
             ],
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 25),
             child: Row(
                   children: const [
                     Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Smart Greenh",style: TextStyle(color: Color(0xff707070),fontSize: 15,fontWeight: FontWeight.bold),),
                     ),
             Text("Plants",style: TextStyle(color: Color(0xff1F3724),fontSize: 15,fontWeight: FontWeight.bold),)
                   ],
             ),
           ),
       GridView.count(
        shrinkWrap: true,
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[

const GridView1(),
Gridview(Icons.thermostat_rounded,"Tempreture","24c"),
Gridview(Icons.water,"Watering","24c"),
Gridview(Icons.air,"wind","10m/s"),
  
  ],
)
          ]
        )
      )
    );
  }
 }