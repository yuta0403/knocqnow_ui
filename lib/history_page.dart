import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HistoryPage(),
    );
  }
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2, // タブの数
        child: Scaffold(
          appBar: AppBar(
            title: const Text('お知らせ'),
            bottom: const TabBar(
              tabs: [
                Tab(text: '通知履歴'), // 1つ目のタブ
                Tab(text: '通知リクエスト'), // 2つ目のタブ
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              HistoryPage1(),
              HistoryPage2(),
            ],
          ),
        ),
      ),
    );
  }
}

// 1つ目のタブの内容
class HistoryPage1 extends StatelessWidget {
  const HistoryPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: List.generate(10, (index) {
        return NeumorphicContainer(
          child: ListTile(
            leading: const Icon(Icons.history),
            title: Text('通知 $index'),
            subtitle: Text('詳細情報 $index'),
          ),
        );
      }),
    );
  }
}

// 2つ目のタブの内容
class HistoryPage2 extends StatelessWidget {
  const HistoryPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: List.generate(10, (index) {
        return NeumorphicContainer(
          child: ListTile(
            leading: const Icon(Icons.history),
            title: Text('通知リクエスト $index'),
            subtitle: Text('詳細情報 $index'),
          ),
        );
      }),
    );
  }
}

class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  const NeumorphicContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: child,
    );
  }
}