import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}


class _CalculatorState extends State<Calculator> {
  var formkey = GlobalKey<FormState>();
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();
  num firstnum=0;
  num secnum=0;
  num sonuc=0;
  divide(){
    setState(() {
      firstnum = int.parse(input1.text);
      secnum = int.parse(input2.text);
      sonuc = firstnum / secnum;
    });
  }
  duplicate(){
    setState(() {
      firstnum = int.parse(input1.text);
      secnum = int.parse(input2.text);
      sonuc = firstnum * secnum;
    });
  }
  addition(){
    setState(() {
      firstnum = int.parse(input1.text);
      secnum = int.parse(input2.text);
      sonuc = firstnum + secnum;
    });
  }
  extract(){
    setState(() {
      firstnum = int.parse(input1.text);
      secnum = int.parse(input2.text);
      sonuc = firstnum - secnum;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body:Form(
        key:formkey ,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  controller: input1,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "Enter the First İnput";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    
                    hintText: "First Input",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black)
                    )
                  ),                
                ),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "Enter the Second İnput";
                    }
                    return null;
                  },
                  controller: input2,
                  
                  decoration: InputDecoration(
                    hintText: "Second Input",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black)
                    )
                  ),                
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: ElevatedButton(onPressed: (){
                        bool kontrolsonucu = formkey.currentState!.validate();

                        if(kontrolsonucu){
                          divide();
                        }
                        
                      }, child: Text("/",style: TextStyle(fontSize: 25),)),
                    ),
                     Container(
                      height: 100,
                      width: 100,
                      child: ElevatedButton(onPressed: (){
                        bool kontrolsonucu = formkey.currentState!.validate();

                        if(kontrolsonucu){
                           duplicate();
                        }
                       
                      }, child: Text("*",style: TextStyle(fontSize: 25))),
                    ),
                     Container(
                      height: 100,
                      width: 100,
                      child: ElevatedButton(onPressed: (){
                        bool kontrolsonucu = formkey.currentState!.validate();

                        if(kontrolsonucu){
                           addition();
                        }
                        
                      }, child: Text("+",style: TextStyle(fontSize: 25))),
                    ),
                     Container(
                      height: 100,
                      width: 100,
                      child: ElevatedButton(onPressed: (){
                         bool kontrolsonucu = formkey.currentState!.validate();

                        if(kontrolsonucu){
                           extract();
                        }
                        
                      }, child: Text("-",style: TextStyle(fontSize: 25))),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child:Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text("$sonuc",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)],),),
                )
                
              ],
            ),
          ),
          ),
      ),
    );
  }
}