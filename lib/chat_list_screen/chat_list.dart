import 'package:flutter/material.dart';
import '../chat_details_screen/chat_detail.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ChatDetailScreen(contactName: 'Contact $index'),
                    ),
                  );
                },
                highlightColor: Colors.blueAccent,
                splashColor: Colors.blueAccent,
                child: Container(
                  color: Colors.transparent,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                    title: Text('Contact $index'),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Last message preview...',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          _getFormattedTime(index),
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  String _getFormattedTime(int index) {
    return '10:${index * 5} AM';
  }
}
