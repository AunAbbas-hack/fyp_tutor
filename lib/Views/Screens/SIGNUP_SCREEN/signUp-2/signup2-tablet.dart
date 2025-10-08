import 'package:flutter/material.dart';
import '../../../uiHelper/customs.dart';
import '../../../uiHelper/mainButton.dart';
import '../sign-up1/signUp-steps.dart';
import '../signUp-3/signup-3Tablet.dart';

class Signup2Tablet extends StatefulWidget {
  const Signup2Tablet({super.key});

  @override
  State<Signup2Tablet> createState() => _Signup2TabletState();
}

class _Signup2TabletState extends State<Signup2Tablet> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Custom.customText(
          text: "Back",
          FontSize: 20,
          color: Colors.black,
          FontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10),
          child: Column(
            children: [
              SignUpSteps(currentStep: 2),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Custom.customText(
                  text: "Longitude",
                  FontSize: 15,
                  color: Colors.black,
                  FontWeight: FontWeight.bold,
                ),
        
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Longitude",
                  labelText: "Longitude",
                  prefixIcon: Icon(Icons.location_on, color: Colors.black),
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: Custom.customText(
                  text: "Latitude",
                  FontSize: 15,
                  color: Colors.black,
                  FontWeight: FontWeight.bold,
                ),
        
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Latitude",
                  labelText: "Latitude",
                  prefixIcon: Icon(Icons.location_on, color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Custom.customText(
                  text: "Select Location",
                  FontSize: 15,
                  color: Colors.black,
                  FontWeight: FontWeight.bold,
                ),
              ),
        
              SizedBox(height: 10),
              Container(
                height: 300,
                width: width * 80,
                child: Image.asset(
                  "assets/images/splashIconLight.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 20),
              RoundButton(
                title: "S I G N U P",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup3Tablet()));
                },
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
