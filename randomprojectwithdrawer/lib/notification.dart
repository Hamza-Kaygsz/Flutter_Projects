import 'package:flutter/material.dart';
import 'package:randomprojectwithdrawer/add.dart';
import 'package:randomprojectwithdrawer/page1.dart';


class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Add()));
          },
          child: const Icon(Icons.add)),
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Page1()));
        },),
        actions: [
          IconButton(
              onPressed: () {
                list.clear();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("List has Cleared")));
                setState(() {});
              },
              icon: const Icon(Icons.delete))
        ],
        title: const Text("Notification"),
      ),
      body: Center(child: SingleChildScrollView(child: Column(children:list))),
    );
  }
}
