import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AlertBox(),
  ));
}

class AlertBox extends StatefulWidget {
  const AlertBox({Key? key}) : super(key: key);

  @override
  _AlertBoxState createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  TextEditingController _textContentController = TextEditingController();

  _dialogContent(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(15),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Container(
              height: 400,
              width: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.red,
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.print,
                            size: 15,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Date",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('02-03-2021', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 13),),
                            Text(
                              "Time",
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text(
                              "7:30",
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Address",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Text('87, Joseph College st, Manjakuppam, Cuddlaore - 1', style: TextStyle(color: Colors.grey, fontSize: 13),),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Landmark",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Text('Lorem ipsum dolor sit am consectetur adipiscing elit', style: TextStyle(color: Colors.grey, fontSize: 13),),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Pincode",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.32,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('600102', style: TextStyle(color: Colors.grey, fontSize: 13),),
                            Text(
                              "City",
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text(
                              "Chennai",
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Other Info",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Text('Lorem ipsum dolor sit am consectetur adipiscing elit', style: TextStyle(color: Colors.grey, fontSize: 13),),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                        onPressed: (){},
                        child: Text('Confirm', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
                  )
                ],
              ),
            )
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'AlertDialog Box',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Submit',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () => _dialogContent(context),
        ),
      ),
    );
  }
}