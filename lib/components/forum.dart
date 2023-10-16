import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Forum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 30.0), // Adjust the horizontal padding here
      width: 1190,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Share your success story to inspire other teams & earn Energy Credits!',
                style: TextStyle(fontSize: 18.0),
              ),
              Row(
                children: [
                  Container(
                    width: 200, // Adjust the width as needed
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(),
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            // Handle search
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.0), // Add some vertical spacing
          Expanded(
            child: ListView(
              // Reverse the order to show the latest messages at the bottom
              reverse: false,
              padding: const EdgeInsets.all(8.0),
              children: <Widget>[
                // Example chat messages
                ChatMessage(
                    message:
                        'Recently, our team installed 3 solar panels. Here are some insights into how much it helped us to save energy this month. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat... Read More',
                    likes: 37,
                    isMe: false),
                ChatMessage(
                    message:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.... Read More',
                    likes: 29,
                    isMe: true),
                ChatMessage(
                    message:
                        'Morbi accumsan pharetra tortor vel semper. Etiam vel posuere turpis. Proin blandit facilisis facilisis. Proin blandit facilisis facilisis for...Read More',
                    likes: 43,
                    isMe: false),
                ChatMessage(
                    message:
                        'Recently, our team installed 3 solar panels. Here are some insights into how much it helped us to save energy this month. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat... Read More',
                    likes: 17,
                    isMe: false),
                ChatMessage(
                    message:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.... Read More',
                    likes: 30,
                    isMe: true),
                ChatMessage(
                    message:
                        'Morbi accumsan pharetra tortor vel semper. Etiam vel posuere turpis. Proin blandit facilisis facilisis. Proin blandit facilisis facilisis for...Read More',
                    likes: 7,
                    isMe: false),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          _buildMessageInput(),
        ],
      ),
    );
  }

  // Function to build the message input area
  Widget _buildMessageInput() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Type your message...',
              border: OutlineInputBorder(),
              suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/icons/pencil-mark.svg', // Replace with the path to your SVG
                    height: 14.0, // Adjust the height as needed
                    width: 14.0, // Adjust the width as needed
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}

// Widget to display a chat message
class ChatMessage extends StatelessWidget {
  final String message;
  final int likes;
  final bool isMe;

  const ChatMessage({
    required this.message,
    required this.likes,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 15.0), // Adjust vertical padding
      child: Align(
        alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 600, // Maximum width for the text box
          ),
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
            color: isMe ? Colors.white : const Color.fromRGBO(240, 241, 243, 1),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Profile picture
                  if (isMe)
                    Image.asset(
                      'assets/Answer-User.png',
                      height: 40.0, // Adjust the height as needed
                    )
                  else
                    Image.asset(
                      'assets/Question-User.png',
                      height: 40.0, // Adjust the height as needed
                    ),
                  SizedBox(
                      width:
                          10.0), // Add spacing between profile icon and message
                  Expanded(
                    child: Text(
                      message,
                      style: TextStyle(
                        height: 1.5, // Adjust the line height (line spacing)
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$likes likes',
                    style: TextStyle(fontSize: 12.0),
                  ),
                  SizedBox(width: 10.0),
                  SvgPicture.asset(
                    'assets/icons/thumb-up.svg',
                    height: 16.0,
                    width: 16.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
