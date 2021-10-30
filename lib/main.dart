import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  dynamic valueh = 4;
  dynamic valuew = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            new Image.asset("Assets/backgroundimg.jpg"),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 15),
                  child: new Row(
                    children: [
                      new Icon(Icons.arrow_back_ios, color: Colors.white)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 25),
                  child: new Text("Tell us about you", style: TextStyle( color: Colors.white, fontSize: 22),),
                )
              ],
            ),
            Positioned(
              top: 180,
              child: new Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          new GestureDetector(
                            child: Column(
                              children: [
                                new Container(
                                  child: Image.asset("Assets/femaleico.png", width: 1),
                                  height: 74,
                                  width: 74,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(45), color: value1? Colors.blue: Colors.grey.shade400)
                                ),
                                new SizedBox(height: 19),
                                new Text("MALE", style: TextStyle(fontSize: 16),)
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
                          new GestureDetector(
                            child: Column(
                              children: [
                                new Container(
                                    child: Image.asset("Assets/maleico.png", width: 1),
                                    height: 74,
                                    width: 74,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(45), color: value2? Colors.blue: Colors.grey.shade400)
                                ),
                                new SizedBox(height: 19),
                                new Text("FEMALE", style: TextStyle(fontSize: 16),)
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
                          new GestureDetector(
                            child: Column(
                              children: [
                                new Container(
                                    child:  Image.asset("Assets/otherico.png", width: 1),
                                    height: 74,
                                    width: 74,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(45), color: value3? Colors.blue: Colors.grey.shade400)
                                ),
                                new SizedBox(height: 19),
                                new Text("OTHER", style: TextStyle(fontSize: 16),)
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
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Container(
                            height: 150,
                            width: 130,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.blue, width: 2)
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new Container(
                                  child: new DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      value: valueh,
                                      items: [
                                        DropdownMenuItem(child: new Text("191", style: TextStyle(fontSize: 40, color: Color(0xFF097AFF))),
                                          value: 1,
                                        ),
                                        new DropdownMenuItem(child: new Text("190", style: TextStyle(fontSize: 40, color: Color(0xFF097AFF))),
                                          value: 2,
                                        ),
                                        new DropdownMenuItem(child: new Text("189", style: TextStyle(fontSize: 40, color: Color(0xFF097AFF))),
                                          value: 3,
                                        ),
                                        new DropdownMenuItem(child: new Text("188", style: TextStyle(fontSize: 40, color: Color(0xFF097AFF))),
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
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: new Text("Height in Cm", style: TextStyle(fontSize: 18)),
                                )
                              ],
                            ),
                          ),
                          new Container(
                            height: 150,
                            width: 130,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.blue, width: 2)
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new Container(
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      value: valuew,
                                      items: [
                                        new DropdownMenuItem(child: new Text("82", style: TextStyle(fontSize: 40, color: Color(0xFF097AFF))),
                                          value: 2,
                                        ),
                                        new DropdownMenuItem(child: new Text("83", style: TextStyle(fontSize: 40, color: Color(0xFF097AFF))),
                                          value: 3,
                                        ),
                                        new DropdownMenuItem(child: new Text("84", style: TextStyle(fontSize: 40, color: Color(0xFF097AFF))),
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
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: new Text("Weight in Kg", style: TextStyle(fontSize: 18),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    new SizedBox(height: 70,),
                    new Container(
                      child: new ElevatedButton(
                          onPressed: (){},
                          child: new Text("Submit", style: TextStyle(fontSize: 20),),
                        style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
                      ),
                      height: 65,
                      width: 318,
                      decoration: BoxDecoration(color: Color(0xFF97AFF)),
                    )
                  ],
                )
              ),
            )
          ]
        ),
      ),
    );
  }
}
