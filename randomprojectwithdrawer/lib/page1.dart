import 'package:flutter/material.dart';
import 'package:randomprojectwithdrawer/notification.dart';
import 'package:randomprojectwithdrawer/drawermenu.dart';
import 'package:randomprojectwithdrawer/add.dart';


class Page1 extends StatefulWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
   var tftext1 = TextEditingController(); 
    var tftext2 = TextEditingController(); 
   String info1 = "123";
    String info2 = "123";
    String error = "";
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text("Input = 123"),
        
      ),
      drawer: drawermenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: tftext1,
                  decoration: InputDecoration(
                    hintText: "Input Text",
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.black
                      ),borderRadius: BorderRadius.all(Radius.circular(20)))
                  ),
              
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: tftext2,
                  decoration: InputDecoration(
                    hintText: "Input Text",
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                  ),
              
                ),
              ),
              ElevatedButton(onPressed: (){

                if(tftext1.text == info1 && tftext2.text == info2)
                {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => notification(),));
                }
                else
                {
                    setState(() {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(action: SnackBarAction(label: "Ok", onPressed: (){}),content:Text("Username or Password is Incorrect",style: TextStyle(color: Colors.red),) ));
                    });
                }

              }, child: Text("Login")),
              
          ],
        ),
      ),
    );
  }
}