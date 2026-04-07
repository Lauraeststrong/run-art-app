import 'package:flutter/material.dart';

class RunCompletePage extends StatelessWidget {
  const RunCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('跑步完成'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.celebration,
              size: 100,
              color: Color(0xFF50C878),
            ),
            const SizedBox(height: 24),
            Text(
              '恭喜完成！',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            const Text('你的跑步作品卡生成中...'),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () {
                // TODO: Share or navigate
              },
              child: const Text('分享作品'),
            ),
          ],
        ),
      ),
    );
  }
}