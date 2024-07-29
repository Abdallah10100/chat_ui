import 'package:flutter/material.dart';

class ChatDetailScreen extends StatelessWidget {
  final String contactName;

  ChatDetailScreen({required this.contactName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Icon(Icons.person), // Placeholder image
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contactName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'Active now', // Placeholder status
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                bool isIncoming = index % 2 == 0;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: isIncoming
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 250),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:
                            isIncoming ? Colors.blueAccent : Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: isIncoming
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Hello! This is a Message $index',
                            style: TextStyle(
                                color:
                                    isIncoming ? Colors.white : Colors.black),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '10:${index * 5} AM', // Placeholder timestamp
                            style: TextStyle(
                                color: isIncoming
                                    ? Colors.white70
                                    : Colors.black87,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      suffixIcon: Icon(Icons.attach_file),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
