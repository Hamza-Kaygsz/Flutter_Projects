import 'package:flutter/material.dart';
import 'package:randomprojectwithdrawer/notification.dart';


class Message {
  String? head;
  String? subject;
}

List<Widget> list = [];

Message message = Message();

int index =0;

TextEditingController head = TextEditingController();
TextEditingController subject = TextEditingController();

class notificationCard extends StatefulWidget {
  const notificationCard({super.key});

  @override
  State<notificationCard> createState() => _notificationCardState();
}

class _notificationCardState extends State<notificationCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
        child: ListTile(

            title: Text("${message.head}"),
            subtitle: Text("${message.subject}")));
  }
}

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const notification()));
        }),
        title: const Text("Add"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: head,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Head")),
                ),
                TextField(
                  controller: subject,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Subject")),
                ),
                ElevatedButton(
                    onPressed: () {
                      message.head = head.text;
                      message.subject = subject.text;
                      list.add(const notificationCard());
                      index = index + 1;
                      print(index);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Card Created Successfully")));
                    },
                    child: const Text("Send"))
              ]),
        ),
      ),
    );
  }
}
