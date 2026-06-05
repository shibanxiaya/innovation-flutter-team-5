import 'package:flutter/material.dart';

void main() {
  runApp(const InnovationHelloApp());
}

class InnovationHelloApp extends StatelessWidget {
  const InnovationHelloApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '创新实验 Flutter 入门',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const HelloHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HelloHomePage extends StatefulWidget {
  const HelloHomePage({super.key});
  @override
  State<HelloHomePage> createState() => _HelloHomePageState();
}

class _HelloHomePageState extends State<HelloHomePage> {
  int completedTasks = 0;
  void finishOneTask() {
    setState(() {
      completedTasks += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('✨ 我的 Flutter 学习之旅'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        elevation: 0,
      ),
      // 渐变背景
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple[50]!, Colors.blue[50]!],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  size: 80,
                  color: Colors.purple,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Hello Flutter！我已完成第14周入门任务！',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  '姓名：张三 | 学号后四位：1234 | 小组：第5组',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.5),
                        blurRadius: 15,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        '$completedTasks',
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        '学习打卡次数',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '继续加油，每天进步一点点！',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: finishOneTask,
        icon: const Icon(Icons.waving_hand),
        label: const Text('今日学习打卡'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 8,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
