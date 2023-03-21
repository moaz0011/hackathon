import 'package:flutter/material.dart';
import '../screens/home_screen1.dart';
// ignore: camel_case_types, must_be_immutable
class lsita extends StatelessWidget {
  String? address;
  String? name;
   lsita(this.address,this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomeScreen2()));
          
        },
        child: Container(
          color: const Color(0xffffffff),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(address!),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xffece2b8),
                    ),
                    child: const Text("Reproductive",style: TextStyle(color: Color(0xffBC9A09),fontSize: 11,fontWeight: FontWeight.bold),),
                  ),
                  Text(name!,style: const TextStyle(color: Color(0xff1F3724),fontSize: 15,
                  fontWeight: FontWeight.bold),),
                  const Text("120 Plant",style: TextStyle(color: Color(0xff707070),fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
              Container(
                color: const Color(0xfffafafa),
                child: const Icon(Icons.arrow_forward),
              )
            ],
          ),
        ),
      ),
    );
  }
}