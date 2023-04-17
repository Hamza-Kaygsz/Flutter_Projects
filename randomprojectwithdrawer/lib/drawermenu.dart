
import 'package:flutter/material.dart';
import 'package:randomprojectwithdrawer/page1.dart';
import 'package:randomprojectwithdrawer/textpage.dart';
class drawermenu extends StatelessWidget {
  const drawermenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(decoration: BoxDecoration(
                  color: Colors.blueGrey
                ),child:Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text("DrawerHeader")],),)),
                
                ListTile(
                  title: Column(
                    children: [
                      Card(child: ListTile(onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => textpage(),));},title: Text("Text Page"),leading: Icon(Icons.add_to_queue_rounded),),),
                      Card(child: ListTile(onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Page1(),));},title: Text("Login Page"),leading: Icon(Icons.add_to_queue_rounded),),),
                      
                      ],
                  ),
                  
                )
                
              ],
            ),
    );
  }
}
