import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart'; 


class MessageBubble extends StatelessWidget {
  const MessageBubble({
    required this.content,
    required this.isUserMessage,
    super.key,
  });

  final String content;
  final bool isUserMessage;

  @override
  Widget build(BuildContext context) {
    //final themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isUserMessage
            ? Colors.pink.withOpacity(0.4)  // Pink for user
            : Colors.blue.withOpacity(0.4), // Blue for SparkAI
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  isUserMessage ? 'You' : 'SparkAI',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            MarkdownBody(data: content),  // Replace Text widget with MarkdownBody
          ],
        ),
      ),
    );
  }
}
