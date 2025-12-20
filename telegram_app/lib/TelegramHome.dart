import 'package:flutter/material.dart';
import 'ChatTitle.dart';

class TelegramHome extends StatefulWidget {
  const TelegramHome({super.key});

  @override
  State<TelegramHome> createState() => _TelegramHome();
}

class _TelegramHome extends State<TelegramHome> {
  int _selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline, color: Colors.blue),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit_outlined, color: Colors.blue),
          ),
        ],
        centerTitle: true,
        title: const Text(
          "Chats",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ChatTitle(
            name: 'Diyath Lakpura',
            message: 'uba mokda karanne? ',
            time: '12.04 PM',
            unreadcount: 8,
          ),
          ChatTitle(
            name: "Alice",
            message: "Hey, how are you?",
            time: "10:30 AM",
            unreadcount: 2,
          ),
          ChatTitle(
            name: "Bob",
            message: "Let's meet tomorrow.",
            time: "9:15 AM",
            unreadcount: 0,
          ),
          ChatTitle(
            name: "Charlie",
            message: "Check this out!",
            time: "Yesterday",
            unreadcount: 105,
          ),
          ChatTitle(
            name: "Dave",
            message: "Thanks bro!",
            time: "Mon",
            unreadcount: 0,
          ),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }

  Widget Navbar() {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        currentIndex: _selectindex,

        onTap: (index) {
          setState(() {
            _selectindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: const Color.fromARGB(255, 0, 80, 219),
        unselectedItemColor: Colors.black,
        enableFeedback: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: "Call",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
