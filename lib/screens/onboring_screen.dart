import 'package:flutter/material.dart';

import 'login_screen.dart';

class Onboring extends StatelessWidget {
  const Onboring({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color(0xff244029),
      body:
      Stack(
  children: <Widget>[
 Column(
        children: [
          Image.asset("assets/onbording.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                const Text("Manage Your",style: TextStyle(color: Color(0xffCAA601),fontSize: 40,fontWeight: FontWeight.bold),),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text("Grean House",style: TextStyle(color: Color.fromARGB(255, 165, 139, 22),fontSize: 40,fontWeight: FontWeight.bold),),
                ),
                const Text("The Green house system is",style: TextStyle(color:Color(0xffCAA601),fontSize: 20,fontWeight: FontWeight.w400),),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text("designed to Helps us control",style: TextStyle(color:Color.fromARGB(255,202,166,1 ),fontSize: 20,fontWeight: FontWeight.w400),),
                ),
                const Text("greenhouses from afar.",style: TextStyle(color:Color.fromARGB(255,202,166,1 ),fontSize: 20,fontWeight: FontWeight.w400),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: InkWell(
                    onTap: () {
                        Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginSreen()),
                                );
                    },
                    child: Container(
                      height: size.width*0.15,
                      width: size.height*0.7,
                      decoration: BoxDecoration(
                        color: const Color(0xffCAA601),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: const Center(child: 
                      Text("Get start",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      Align(
        alignment: Alignment.center,
        child: Image.asset("assets/logo.png"),
      )
  ]
  
  
  )
      
      
    );
  }
}