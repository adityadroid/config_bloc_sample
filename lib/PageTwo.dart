import 'package:config_bloc_sample/PageThree.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: MaterialButton(
            child: Text('GO TO Settings',style: TextStyle(color: Colors.white)),
            color: Colors.blue,
            onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>PageThree())),

          ),
        ),
      ),
    );
  }
}
