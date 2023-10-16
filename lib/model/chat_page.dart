// chat_page.dart
import 'package:dellsparkcity/model/chat_api.dart';
import 'package:dellsparkcity/model/chat_message.dart';
import 'package:dellsparkcity/model/message_bubble.dart';
import 'package:dellsparkcity/model/message_composer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';  // Import flutter_svg package

class ChatPage extends StatefulWidget {
  const ChatPage({
    required this.chatApi,
    super.key,
  });

  final ChatApi chatApi;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _messages = <ChatMessage>[
    ChatMessage('Do you need recommendations?', false),
  ];
  var _awaitingResponse = false;

  Future<void> _onSubmitted(String message) async {
    setState(() {
      _messages.add(ChatMessage(message, true));
      _awaitingResponse = true;
    });
    final response = await widget.chatApi.completeChat(_messages);
    setState(() {
      _messages.add(ChatMessage(response, false));
      _awaitingResponse = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(backgroundColor: Colors.white, elevation: 0,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 5, top: 0, bottom: 5),
              child: Row(
                children: [
                  const Text(
                    'Ask ChatGPT',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SvgPicture.asset('assets/icons/chat-bot 1.svg',
                      height: 14, width: 12, color: Colors.black),
                  const SizedBox(width: 8),
                ],
              ),
            ),
            const SizedBox(height: 0), 
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 1.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          ..._messages.map(
                            (msg) => MessageBubble(
                              content: msg.content,
                              isUserMessage: msg.isUserMessage,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MessageComposer(
                      onSubmitted: _onSubmitted,
                      awaitingResponse: _awaitingResponse,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
