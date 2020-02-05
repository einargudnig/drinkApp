import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  /*int _count = 0;

  void add() {
    setState(() {
          _count++;
        });
  }

  void minus() {
    setState(() {
      if (_count != 0)
        _count--;
    });
  }*/
      
  @override
    _CounterState createState() => _CounterState();
    
    void setState(Null Function() param0) {}
  
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    int _count = 0;
    
    void add() {
    setState(() {
          _count++;
        });
    }

    void minus() {
      setState(() {
        if (_count != 0)
          _count--;
      });
    }
    
        return Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Card(
            margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
            child: new Center(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new FloatingActionButton(
                    onPressed: add,
                    child: new Icon(Icons.add, color: Colors.black,),
                    backgroundColor: Colors.white,
                    ),
    
                  new Text('$_count',
                      style: new TextStyle(fontSize: 60.0),
                  ),
    
                  new FloatingActionButton(
                    onPressed: minus,
                  child: new Icon(
                    const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                    color: Colors.black),
                    backgroundColor: Colors.white,
                  ),
            ],)
        ),
      ),
    );
  }
}