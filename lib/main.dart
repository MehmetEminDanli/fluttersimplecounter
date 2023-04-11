import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ' Sayaç Uygulaması',
        
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
       
        home: MyHomePage(title: 'Flutter Sayaç Uygulaması'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   double fontsize=100;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }


  void _resetCounter() {
    setState(() {
      _counter = 0;
     
    });
  }

  void artifont(){
   setState(() {
     fontsize+=5;
   });
 }

  void eksifont(){
    setState(() {
      fontsize-=5;
    });
  }


  @override
  Widget build(BuildContext context) {
     Color textColor = (_counter < 0) ? Colors.red : Colors.green;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: artifont,
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: eksifont,
            icon: Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sayaç:',
             
              style: TextStyle(fontSize: fontsize), 
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold,color: textColor),
           
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Azalt',
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Artır',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Sıfırla',
            child: Icon(Icons.refresh),
          ),SizedBox(width: 20),
        
        ],
      ),
    );
  }
}





