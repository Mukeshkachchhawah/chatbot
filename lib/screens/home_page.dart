import 'package:chatbot/app_widget/custom_drawer.dart';
import 'package:chatbot/app_widget/custom_textfild.dart';
import 'package:chatbot/ui_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var messageController = TextEditingController();
  final List<Message> _message = [];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("ChatBot"),
          actions: [
            CircleAvatar(
                child: IconButton(onPressed: () {}, icon: Icon(Icons.add)))
          ],
        ),
        drawer: CustomDrawer(),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.landscape
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Flexible(
                            child: ListView.builder(
                          reverse: true,
                          itemCount: _message.length,
                          itemBuilder: (context, index) {
                            return BuildMessage(_message[index]);
                          },
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 320,
                              child: CustomTextFild(
                                  mycontroller: messageController,
                                  hinttext: "Type a message....",
                                  lebText: "Input",
                                  iconbutton: IconButton(
                                      onPressed: SendMessage,
                                      icon: Icon(Icons.send))),
                            ),
                            IconButton(onPressed: () {}, icon: Icon(Icons.mic))
                          ],
                        )
                      ],
                    ),
                  )
                :
                //// orientation.portaed
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Flexible(
                            child: ListView.builder(
                          reverse: true,
                          itemCount: _message.length,
                          itemBuilder: (context, index) {
                            return BuildMessage(_message[index]);
                          },
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 320,
                              child: CustomTextFild(
                                  mycontroller: messageController,
                                  hinttext: "Type a message....",
                                  lebText: "Input",
                                  iconbutton: IconButton(
                                      onPressed: SendMessage,
                                      icon: Icon(Icons.send))),
                            ),
                            IconButton(onPressed: () {}, icon: Icon(Icons.mic))
                          ],
                        )
                      ],
                    ),
                  );
          },
        ));
  }

  Widget BuildMessage(Message message) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:
              message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              message.isMe ? 'you' : 'ChatBot',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              message.text,
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }

  void SendMessage() {
    Message message = Message(text: messageController.text, isMe: true);
    messageController.clear();
    setState(() {
      _message.insert(0, message);
    });

    //// call by sendChatGPTApi
  }
}
