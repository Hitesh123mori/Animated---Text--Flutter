import 'package:flutter/material.dart' ;
import 'animatedtext.dart';
void main()
{
  runApp(myapp()) ;
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated text"),
        ),
        body: animatedtext(),
      ),
    );
  }
}
