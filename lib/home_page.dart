import 'package:flutter/material.dart';
import 'dart:math';
class HomePage extends StatefulWidget {

  @override
  State createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1=0.0,num2=0.0,res=0.0;

  final TextEditingController t1=new TextEditingController(text:"");
  final TextEditingController t2=new TextEditingController(text:"");
  void add()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      res=num1+num2;
    });
  }
  void diff()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      res=num1-num2;
    });
  }
  void mult()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      res=num1*num2;
    });
  }
  void div()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      res=num1/num2;
    });
  }
  void power()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      res=pow(num1, num2);

    });
  }
  void mod()
  {
    setState(() {
      num1=double.parse(t1.text);
      num2=double.parse(t2.text);
      res=num1%num2;
    });
  }
  void clear()
  {
    setState(() {
      t1.text="";
      t2.text="";
      res=0.0;
    });
  }




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding:const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter number 1"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Enter number 2"
              ),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 10.0),),
            new Text(
              "Output=$res",
              style: new TextStyle(fontSize: 20.0,color: Colors.teal,fontWeight: FontWeight.bold),

            ),
            new Padding(
                padding: const EdgeInsets.only(top: 10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.teal,
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: add
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.teal,
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: diff,
                ),

              ],
            ),
        new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new MaterialButton(
            child: new Text("*"),
            color: Colors.teal,
            textColor: Colors.white,
            splashColor: Colors.white,
            onPressed: mult,
          ),
          new MaterialButton(
            child: new Text("/"),
            color: Colors.teal,
            textColor: Colors.white,
            splashColor: Colors.white,
            onPressed: div,
          ),
        ],
      ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("^"),
                  color: Colors.teal,
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: power,
                ),
                new MaterialButton(
                  child: new Text("%"),
                  color: Colors.teal,
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: mod,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 10.0),),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("CLEAR"),
                  color: Colors.teal,
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: clear,
                ),
              ],
            ),
         ],
      ),
      ),
    );
  }
}
