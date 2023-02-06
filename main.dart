import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MaterialApp(home: myapp(),));
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("myapp")),
      body: Center(child: TextButton(
        child: Text('Character checker!.....'),
        onPressed: (){
          String givenString = "Random";
          String checkInString = "Salogosm";
          int strLen1 = givenString.length;
          int strLen2 = checkInString.length;
          for(int char1=0;char1<strLen1;char1++){
            int charCtr = 0;
            for(int char2=0;char2<strLen2;char2++){
              if(givenString[char1]==checkInString[char2]){
                charCtr++;
              }
            }
            print(givenString[char1] + " : $charCtr ");
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("armstrong number");

          for(int num=1;num<1000;num++){
            int sum = 0;
            String numStr = num.toString();
            int len = numStr.length;
            for(int char=0;char<len;char++){
              String temp = numStr[char];
              int tempNum = int.parse(temp);
              int tem = tempNum*tempNum*tempNum;
              sum = sum + tem;
            }
            if(num==sum){
              print("$num is a armstrong number");
            }
          }
        },
        child: Text("Arm"),
      ),
    );
  }
}

