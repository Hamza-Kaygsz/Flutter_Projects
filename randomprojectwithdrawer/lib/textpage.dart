
import 'package:flutter/material.dart';
import 'package:randomprojectwithdrawer/drawermenu.dart';

class textpage extends StatefulWidget {
  const textpage({ Key? key }) : super(key: key);

  @override
  _textpageState createState() => _textpageState();
}

class _textpageState extends State<textpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page'),
        
      ),
      drawer: drawermenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Page Switched",style: TextStyle(color: Colors.black,fontSize: 35,shadows: [Shadow(blurRadius: 2.0,offset: Offset(5.0, 5.0),color: Colors.grey)]),),
              

              
              ],
            ),
          ),
    );
  }
}