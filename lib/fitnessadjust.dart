import 'package:flutter/material.dart';
// import 'package:gusto_king/Constants/ConstantColors.dart';
// import 'package:gusto_king/CustomWidget/CustomBackground.dart';
// import 'package:gusto_king/CustomWidget/CustomButton.dart';
//
// import 'StressLevels.dart';
void main(){
  runApp(MaterialApp(home: TellUsAboutYou()));
}

class TellUsAboutYou extends StatefulWidget {

  @override
  _TellUsAboutYouState createState() => _TellUsAboutYouState();
}

class _TellUsAboutYouState extends State<TellUsAboutYou> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  dynamic valueh = 4;
  dynamic valuew = 3;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: (ThemeData().copyWith(
          dividerColor: Colors.transparent,
          scaffoldBackgroundColor: Colors.white)),
      home: Scaffold(
        // persistentFooterButtons: [
        //   Padding(
        //     padding: const EdgeInsets.only(bottom: 30,),
        //     child: Center(
        //       child: Container(
        //         width: width/1.5,
        //         child: GestureDetector(
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (contexts) => StressLevels(
        //
        //                 ),
        //               ),
        //             );
        //           },
        //           child: customButton(
        //             title: "Submit",
        //             fontSize: 20,
        //             color: Colors.white,
        //             backgroundColor: buttonColor,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        //
        // ],
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child:SingleChildScrollView(
              child: Stack(
                children: [
                  new Image.asset("Assets/backgroundimg.jpg"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 20),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ), onPressed: () {
                          Navigator.of(context).pop();
                        },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Tell us about you",style: TextStyle(fontSize: 22,color: Colors.white),),
                      ),
                      SizedBox(height: height/10,),
                      Container(
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: height/15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  child: Column(
                                    children: [
                                      Container(
                                          child: Image.asset("Assets/femaleico.png", width: 1,),
                                          height: 64,
                                          width: 64,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(45), color: value1? Color(0xFF0019A7): Colors.grey.shade400)
                                      ),
                                      SizedBox(height: 10),
                                      Text("MALE", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: value1? Color(0xFF0019A7): Colors.grey.shade400 ),)
                                    ],
                                  ),
                                  onTap: (){
                                    value1=true;
                                    setState(() {
                                      if(value1==true){
                                        value1=true;
                                        value2=false;
                                        value3=false;
                                      };
                                    });
                                  },
                                ),
                                GestureDetector(
                                  child: Column(
                                    children: [
                                      Container(
                                          child: Image.asset("Assets/maleico.png", width: 1),
                                          height: 64,
                                          width: 64,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(45), color: value2? Color(0xFF0019A7): Colors.grey.shade400)
                                      ),
                                      SizedBox(height: 10),
                                      Text("FEMALE", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: value2? Color(0xFF0019A7): Colors.grey.shade400 ),)
                                    ],
                                  ),
                                  onTap: (){
                                    value2=true;
                                    setState(() {
                                      if(value2==true){
                                        value2=true;
                                        value1=false;
                                        value3=false;
                                      };
                                    });
                                  },
                                ),
                                GestureDetector(
                                  child: Column(
                                    children: [
                                      Container(
                                          child:  Image.asset("Assets/otherico.png", width: 1),
                                          height: 64,
                                          width: 64,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(45), color: value3? Color(0xFF0019A7): Colors.grey.shade400)
                                      ),
                                      SizedBox(height: 10),
                                      Text("OTHER", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: value3? Color(0xFF0019A7): Colors.grey.shade400 ),)
                                    ],
                                  ),
                                  onTap: (){
                                    value3=true;
                                    setState(() {
                                      if(value3==true){
                                        value3=true;
                                        value1=false;
                                        value2=false;
                                      };
                                    });
                                  },
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xFF0019A7), width: 2)
                                    ),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child:  Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                value: valueh,
                                                icon: Padding(
                                                  padding: const EdgeInsets.only(bottom: 25),
                                                  child: Icon(Icons.arrow_drop_down, color: Colors.black),
                                                ),
                                                items: [
                                                  DropdownMenuItem(child:  Text("191", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFF0019A7))),
                                                    value: 1,
                                                  ),
                                                  DropdownMenuItem(child:  Text("190", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFF0019A7))),
                                                    value: 2,
                                                  ),
                                                  DropdownMenuItem(child:  Text("189", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(
                                                      0xFF0019A7))),
                                                    value: 3,
                                                  ),
                                                  DropdownMenuItem(child:  Text("188", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFF0019A7))),
                                                    value: 4,
                                                  ),
                                                ],
                                                onChanged: (value){
                                                  setState(() {
                                                    valueh = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child:  Text("Height in Cm", style: TextStyle(fontSize: 18)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Color(0xFF0019A7), width: 2)
                                    ),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton(
                                                value: valuew,
                                                icon: Padding(
                                                  padding: const EdgeInsets.only(bottom: 25),
                                                  child: Icon(Icons.arrow_drop_down, color: Colors.black),
                                                ),
                                                items: [
                                                  DropdownMenuItem(child:  Text("82", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Color(0xFF0019A7))),
                                                    value: 2,
                                                  ),
                                                  DropdownMenuItem(child:  Text("83", style: TextStyle(fontSize: 35, color: Color(0xFF0019A7),fontWeight: FontWeight.bold)),
                                                    value: 3,
                                                  ),
                                                  DropdownMenuItem(child:  Text("84", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Color(0xFF0019A7))),
                                                    value: 4,
                                                  ),
                                                ],
                                                onChanged: (val){
                                                  setState(() {
                                                    valuew = val;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child:  Text("Weight in Kg", style: TextStyle(fontSize: 18),),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
          ) ,
        ),
      ),
    );
  }
}