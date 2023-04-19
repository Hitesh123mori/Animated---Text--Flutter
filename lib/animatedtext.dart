import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class animatedtext extends StatefulWidget {
  const animatedtext({Key? key}) : super(key: key);

  @override
  State<animatedtext> createState() => _animatedtextState();
}

class _animatedtextState extends State<animatedtext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           AnimatedTextKit(
             displayFullTextOnTap: true,
             stopPauseOnTap: false,
             onTap: (){ print("hello") ;},
             isRepeatingAnimation: false,
             repeatForever: false,
             onFinished  :(){print("finish") ;},
            // isRepeatingAnimation: true,
             totalRepeatCount: 4 ,
             animatedTexts: [

               FadeAnimatedText(
                 'Fade First',
                 textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
               ),

               ScaleAnimatedText(
                 'Then Scale',
                 textStyle: TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
               ),
               TyperAnimatedText("Typeranimation",
                 speed: Duration(seconds: 2),
                 curve: Curves.elasticOut,
                 textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

               ) ,

              RotateAnimatedText("Forth",textStyle: TextStyle(fontSize: 30)) ,
               RotateAnimatedText("is",textStyle: TextStyle(fontSize: 30)) ,
               RotateAnimatedText("Rotate",textStyle: TextStyle(fontSize: 30)) ,
               RotateAnimatedText("Animation",textStyle: TextStyle(fontSize: 30)) ,
               RotateAnimatedText("Text",textStyle: TextStyle(fontSize: 30)) ,
               RotateAnimatedText("Widget",textStyle: TextStyle(fontSize: 30)) ,



               TypewriterAnimatedText("TYPERWRITTER")





             ],
           ),
         ],
       ),
    );
  }
}
