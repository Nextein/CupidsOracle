// ignore_for_file: library_private_types_in_public_api

// import 'package:cupidsoracle/theme.dart';
import 'package:cupidsoracle/theme.dart';
import 'package:flutter/material.dart';

// import 'package:firebase_database/firebase_database.dart';

// import 'dart:convert';
// import 'dart:math';

// import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background
          Container(
            decoration: backgroundGradient,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: color2,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 64,
                child: Image(
                  image: AssetImage("assets/images/blank_profile.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// -----------------------------------------------------------------------
// For the testing purposes, you should probably use https://pub.dev/packages/uuid.
// String randomString() {
//   final random = Random.secure();
//   final values = List<int>.generate(16, (i) => random.nextInt(255));
//   return base64UrlEncode(values);
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final List<types.Message> _messages = [];
//   final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: Chat(
//           messages: _messages,
//           onSendPressed: _handleSendPressed,
//           user: _user,
//         ),
//       );

//   void _addMessage(types.Message message) {
//     setState(() {
//       _messages.insert(0, message);
//     });
//   }

//   void _handleSendPressed(types.PartialText message) {
//     final textMessage = types.TextMessage(
//       author: _user,
//       createdAt: DateTime.now().millisecondsSinceEpoch,
//       id: randomString(),
//       text: message.text,
//     );

//     _addMessage(textMessage);
//   }
// }

// ------------------------------------------------

// class ChatScreen3 extends StatelessWidget {
//   // const ChatScreen3({this.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: backgroundGradient,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 52),
//             child: Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     reverse: true,
//                     itemCount: 10,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         margin: const EdgeInsets.all(10),
//                         padding: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           color: Colors.grey[300],
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Text('Message - $index'),
//                       );
//                     },
//                   ),
//                 ),
//                 Container(
//                   margin: const EdgeInsets.all(10),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: 'Type your message...',
//                           ),
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: const Icon(Icons.send),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ChatScreen extends StatefulWidget {
//   final String userId;

//   const ChatScreen({required this.userId});

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _textEditingController = TextEditingController();
//   final DatabaseReference _databaseReference =
//       FirebaseDatabase.instance.ref().child('messages');
//   final List<ChatMessage> _chatMessages = [];

//   @override
//   void initState() {
//     super.initState();
//     _databaseReference.onValue.listen((event) {
//       final data = event.snapshot.value;
//       if (data == null) {
//         return;
//       }
//       final messages = Map<String, String>.from(data as Map<dynamic, dynamic>);
//       _chatMessages.clear();
//       messages.forEach((key, value) {
//         final chatMessage = ChatMessage(
//           text: value,
//           userId: key,
//           isMe: widget.userId == key,
//         );
//         _chatMessages.add(chatMessage);
//       });
//       setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Chat'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: ListView.builder(
//               itemCount: _chatMessages.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return _chatMessages[index];
//               },
//             ),
//           ),
//           const Divider(height: 1.0),
//           Container(
//             decoration: BoxDecoration(color: Theme.of(context).cardColor),
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: TextField(
//                     controller: _textEditingController,
//                     decoration: const InputDecoration(
//                       hintText: 'Type a message',
//                       contentPadding: EdgeInsets.all(16.0),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.send),
//                   onPressed: () {
//                     final text = _textEditingController.text;
//                     if (text.isEmpty) {
//                       return;
//                     }
//                     final chatMessage = ChatMessage(
//                       text: text,
//                       userId: widget.userId,
//                       isMe: true,
//                     );
//                     _databaseReference.push().set({
//                       widget.userId: text,
//                     });
//                     _textEditingController.clear();
//                     setState(() {
//                       _chatMessages.add(chatMessage);
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ChatMessage extends StatelessWidget {
//   final String text;
//   final String userId;
//   final bool isMe;

//   const ChatMessage({
//     required this.text,
//     required this.userId,
//     required this.isMe,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             margin: const EdgeInsets.only(right: 16.0),
//             child: CircleAvatar(child: Text(userId[0])),
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment:
//                   isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   userId,
//                   style: const TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(top: 5.0),
//                   child: Text(text),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
