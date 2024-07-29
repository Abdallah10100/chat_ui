import 'package:flutter/material.dart';
import '../chat_list_screen/chat_list.dart';

class ChatScreenWithTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // TabBar
            const Material(
              child: TabBar(
                tabs: [
                  Tab(text: 'Messages'),
                  Tab(text: 'Online'),
                  Tab(text: 'Groups'),
                  Tab(text: 'Calls'),
                ],
              ),
            ),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  AllChatsTab(),
                  OnlineTab(),
                  GroupsTab(),
                  CallsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatListScreen();
  }
}

class OnlineTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Online Tab'));
  }
}

class GroupsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Groups Tab'));
  }
}

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Calls Tab'));
  }
}
