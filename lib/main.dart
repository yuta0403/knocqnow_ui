import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE0E5EC),
        appBar: AppBar(
          backgroundColor: Color(0xFFE0E5EC),
          title: Text(
            '友達',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {},
            ),
          ],
          elevation: 0,
        ),
        body: ChatScreen(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFE0E5EC),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: NeumorphicIcon(icon: Icons.message),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: NeumorphicIcon(icon: Icons.group),
              label: 'Friends',
            ),
            BottomNavigationBarItem(
              icon: NeumorphicIcon(icon: Icons.timeline),
              label: 'Timeline',
            ),
          ],
        ),
      ),
    );
  }
}
class NeumorphicIcon extends StatelessWidget {
  final IconData icon;

  const NeumorphicIcon({required this.icon}); // Added const here

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFFE0E5EC),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-2, -2),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Color(0xFFA3B1C6),
            offset: Offset(2, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Icon(icon, color: Colors.black),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // 仮のアイテム数
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeumorphicContainer(
            child: ListTile(
              leading: NeumorphicAvatar(),
              title: Text('友達 $index'),
              subtitle: Text('最後のメッセージ内容'),
              trailing: Text('12:34'),
              onTap: () {
                // チャット画面に遷移する機能をここに追加
              },
            ),
          ),
        );
      },
    );
  }
}

class NeumorphicContainer extends StatelessWidget {
  final Widget child;

  NeumorphicContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE0E5EC),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-5, -5),
            blurRadius: 15,
          ),
          BoxShadow(
            color: Color(0xFFA3B1C6),
            offset: Offset(5, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: child,
    );
  }
}

class NeumorphicIconButton extends StatelessWidget {
  late final IconData iconData;

  @override
  Widget build(BuildContext context) {
    IconData? icon;
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFFE0E5EC),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-2, -2),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Color(0xFFA3B1C6),
            offset: Offset(2, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Icon(icon, color: Colors.black),
    );
  }
}

class NeumorphicAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFE0E5EC),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-2, -2),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Color(0xFFA3B1C6),
            offset: Offset(2, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Icon(Icons.person, color: Colors.black),
    );
  }
}
