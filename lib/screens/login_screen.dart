import 'package:flutter/material.dart';
import 'package:hackathon/screens/home_screen.dart';

class LoginSreen extends StatefulWidget {
  const LoginSreen({super.key});

  @override
  State<LoginSreen> createState() => _LoginSreenState();
}

class _LoginSreenState extends State<LoginSreen> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        color: const Color(0xff244029),
        height: size.height,
        child: Image.asset("assets/background.png",fit: BoxFit.cover,),
      ),
      Padding(
        padding:  EdgeInsets.symmetric(vertical: size.height*0.1,horizontal: size.width*0.05),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 150,
              height: 150,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
              color: Colors.white, fontSize: 29, fontWeight: FontWeight.bold),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 10),
             child: TextFormField(
                         decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                hintText: "Email/UserName",
                hintStyle: TextStyle(
                    color: Color(0xff1F3724),
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
                suffixIcon: Icon(
                  Icons.mail_outline_outlined,
                  color: Color(0xff1F3724),
                )),
                       ),
           ),
            TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            hintText: "Email/UserName",
            hintStyle: const TextStyle(
                color: Color(0xff1F3724),
                fontSize: 13,
                fontWeight: FontWeight.w400),
            suffix: Icon(
              obscureText == false ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xff1F3724),
            ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomeScreen()),
  );
                },
                child: Container(
                          height: size.height * 0.07,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                  color: const Color(0xffCAA601),
                  borderRadius: BorderRadius.circular(25)),
                          child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                          ),
                ),
              ),
            ),
            const Text(
              "Forget password?",
              style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xffF5EFEF)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            const Text(
              "don't have account yet?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xffF5EFEF),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Register",
                style: TextStyle(
                    color: Color(0xffBC9A09),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            )
              ],
            )
          ],
        ),
      )
    ]));
  }
}
