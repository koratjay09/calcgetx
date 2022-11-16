import 'package:flutter/material.dart';
import 'package:get/get.dart';

class calc extends StatelessWidget {


  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  Model m = Get.put(Model());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text("Calculator using Getx"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: first,
                keyboardType: TextInputType.number,
                cursorColor:  Colors.lightGreen,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,width: 3)
                  ),
                  border: OutlineInputBorder(),
                  hintText: "Enter First",
                  labelText: "First",
                  labelStyle: TextStyle(color: Colors.deepPurple),
                ),

              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: second,
                keyboardType: TextInputType.number,
                cursorColor:  Colors.lightGreen,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,width: 3)
                  ),
                  border: OutlineInputBorder(),
                  hintText: "Enter Second",
                  labelText: "Second",
                  labelStyle: TextStyle(color: Colors.deepPurple),
                ),

              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Obx(() => Text(
                "Anser : ${m.ans}",

              )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: () {
                  String First = first.text;
                  String Second = second.text;
                  m.plus(First , Second);
                }, child: Text("+")),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: () {
                  String First = first.text;
                  String Second = second.text;
                  m.minus(First , Second);
                }, child: Text("-")),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: () {
                  String First = first.text;
                  String Second = second.text;
                  m.multi(First , Second);
                }, child: Text("X")),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: () {
                  String First = first.text;
                  String Second = second.text;
                  m.div(First , Second);
                }, child: Text("/")),
              ),
            ],
          ),
        ],
      ),

    );
  }
}


class Model extends GetxController{
  RxDouble ans = 0.0.obs;

  void plus(String First,
      String Second,)
  {
    double a =0;
    double b = 0;
    if(First.trim().isNotEmpty){
      a = double.parse(First);
    }
    if(Second.trim().isNotEmpty){
      b=double.parse(Second);
    }

    double c = a+b;
    ans.value = c;
    print(ans);

  }
  void minus(String First,
      String Second,)
  {
    double a =0;
    double b = 0;
    if(First.trim().isNotEmpty){
      a = double.parse(First);
    }
    if(Second.trim().isNotEmpty){
      b=double.parse(Second);
    }

    double c = a-b;
    ans.value = c;
    print(ans);

  }
  void multi(String First,
      String Second,)
  {
    double a =0;
    double b = 0;
    if(First.trim().isNotEmpty){
      a = double.parse(First);
    }
    if(Second.trim().isNotEmpty){
      b=double.parse(Second);
    }

    double c = a*b;
    ans.value = c;
    print(ans);

  }
  void div(String First,
      String Second,)
  {
    double a =0;
    double b = 0;
    if(First.trim().isNotEmpty){
      a = double.parse(First);
    }
    if(Second.trim().isNotEmpty){
      b=double.parse(Second);
    }

    double c = a/b;
    ans.value = c;
    print(ans);

  }
}