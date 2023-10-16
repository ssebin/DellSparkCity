import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatGPTCard extends StatelessWidget {
  const ChatGPTCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25.0, top: 0, bottom: 0),
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
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 8.0, top: 0, bottom: 0),
          child: SizedBox(
            height: 310,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0.0, // Remove default shadow
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Do you need any suggestions?',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 50,
                          child: TextField(
                            style: const TextStyle(height: 1.5),
                            decoration: InputDecoration(
                              hintText: 'How can I reduce the bills?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), // Add rounded corners
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                              suffixIcon: Material(
                                color: Colors.transparent,
                                clipBehavior: Clip.hardEdge,
                                child: IconButton(
                                  icon: const Icon(Icons.send),
                                  onPressed: () {
                                    // Handle the send button press here
                                  },
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Some questions to start you with',
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            _suggestionButton(
                                'How can I optimize my electrical usage?'),
                            _suggestionButton('How can I reduce the bills?'),
                            _suggestionButton(
                                'What is the environmental impact?'),
                            _suggestionButton(
                                'How can I improve energy efficiency?'),
                            _suggestionButton(
                                'Are we an energy sustainable team?'),
                            _suggestionButton(
                                'How can I reduce carbon footprint?'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _suggestionButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // Handle the suggestion button press here
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
