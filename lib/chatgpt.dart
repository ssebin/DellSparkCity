// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class ChatCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//       color: Colors.white,
//       child: ChatWidget(),
//     );
//   }
// }

// class ChatWidget extends StatefulWidget {
//   @override
//   _YourChatWidgetState createState() => _YourChatWidgetState();
// }

// class _YourChatWidgetState extends State<ChatWidget> {
//   final TextEditingController _controller = TextEditingController();
//   final List<String> _messages = [];

//   void _sendMessage(String text) async {
//     if (text.isNotEmpty) {
//       setState(() {
//         _messages.add('User: $text');
//       });
//       final response = await OpenAI().callGPT3(text);
//       setState(() {
//         _messages.add('ChatGPT: ${response.choices.first.text.trim()}');
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: ListView.builder(
//             itemCount: _messages.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(_messages[index]),
//               );
//             },
//           ),
//         ),
//         TextField(
//           controller: _controller,
//           decoration: InputDecoration(
//             hintText: 'Type a message',
//             suffixIcon: IconButton(
//               icon: Icon(Icons.send),
//               onPressed: () {
//                 _sendMessage(_controller.text);
//                 _controller.clear();
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

