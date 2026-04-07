import 'package:flutter/material.dart';

class RunningPage extends StatefulWidget {
  final String routeId;

  const RunningPage({super.key, required this.routeId});

  @override
  State<RunningPage> createState() => _RunningPageState();
}

class _RunningPageState extends State<RunningPage> {
  bool _isRunning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('跑步中'),
        actions: [
          if (_isRunning)
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('结束'),
            ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.directions_run,
              size: 100,
              color: Color(0xFF4A90E2),
            ),
            const SizedBox(height: 32),
            Text(
              _isRunning ? '跑步进行中...' : '准备开始',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              '路线 ID: ${widget.routeId}',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
            ),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isRunning = !_isRunning;
                });
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              ),
              child: Text(_isRunning ? '暂停' : '开始跑步'),
            ),
          ],
        ),
      ),
    );
  }
}