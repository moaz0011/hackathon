import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../widgets/uload_textfiled.dart';
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
class UpLoad extends StatefulWidget {
  const UpLoad({super.key});

  @override
  State<UpLoad> createState() => _UpLoadState();
}

TextEditingController farmName = TextEditingController();
TextEditingController farmtype = TextEditingController();
TextEditingController city = TextEditingController();
TextEditingController government = TextEditingController();
TextEditingController isDisabled = TextEditingController();
TextEditingController landArea = TextEditingController();
TextEditingController landNumber = TextEditingController();
TextEditingController farmCode = TextEditingController();

class _UpLoadState extends State<UpLoad> {
    File? file;
  String? url;
  void getimage() async {
    // ignore: deprecated_member_use, unused_local_variable
    final imageFarm = await ImagePicker().getImage(source: ImageSource.camera);
    file = File(imageFarm!.path);
    var nameimage = basename(imageFarm.path);
    var refstorge = FirebaseStorage.instance.ref("images/$nameimage");

    await refstorge.putFile(file!);
    url = await refstorge.getDownloadURL();
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        color: const Color(0xff244029),
        height: size.height,
        child: Image.asset(
          "assets/background.png",
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.27,
                height: size.height * 0.2,
                child: Image.asset("assets/logo.png"),
              ),
              UpLoadTextFiled("farmName", farmName),
              UpLoadTextFiled("farmtype", farmtype),
              UpLoadTextFiled("city", city),
              UpLoadTextFiled("government", government),
              UpLoadTextFiled("isDisabled", isDisabled),
              UpLoadTextFiled("landArea", landArea),
              UpLoadTextFiled("landNumber", landNumber),
              UpLoadTextFiled("farmCode", farmCode),
              GestureDetector(
                onTap: () {
                  getimage();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Container(
                    width: size.width*0.4,
                    height: size.height*0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffBC9A09),
                    ),
                    child: const Center(child: Text("Upload image",style: TextStyle(
                      color: Colors.white
                    ),)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () { 
                    Map<String, String> datatosave = {
                      "farmName": farmName.value.text,
                      "farmtype": farmtype.value.text,
                      "city": city.value.text,
                      "government": government.value.text,
                      "isDisabled": isDisabled.value.text,
                      "landArea": landArea.value.text,
                      "landNumber": landNumber.value.text,
                      "urlImgae":"$url",
                    };
                    setState(() {
                      FirebaseFirestore.instance
                          .collection("Farmes")
                          .add(datatosave);
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffBC9A09),
                    ),
                    child: const Center(
                        child: Text(
                      "Add Farm",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]));
  }
}
