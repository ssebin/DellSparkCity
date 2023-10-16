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
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20), 
      decoration: BoxDecoration(
        color: isUserMessage
            ? Color(0xffF0F1F3) // Grey for user
            : Colors.white, // White for SparkAI
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 1), // Adjust the shadow offset as needed
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  isUserMessage
                      ? 'assets/Question-User.png' // Replace with your user avatar image path
                      : 'assets/Answer-User.png', // Replace with SparkAI avatar image path
                  width: 24, // Set the desired width of the avatar
                  height: 24, // Set the desired height of the avatar
                ),
                const SizedBox(width: 8), // Add spacing between avatar and text
                Text(
                  isUserMessage ? 'You' : 'SparkAI',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 4), // Adjust the height here
            const SizedBox(height: 8), // Add space between "SparkAI" and the message
            MarkdownBody(data: content), // Replace Text widget with MarkdownBody
          ],
        ),
      ),
    );
  }
}
