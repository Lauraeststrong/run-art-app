import 'package:flutter/material.dart';

class RoutesListPage extends StatelessWidget {
  const RoutesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data
    final routes = [
      {'name': '爱心路线', 'distance': '5.2km', 'difficulty': '简单'},
      {'name': '星星路线', 'distance': '3.8km', 'difficulty': '简单'},
      {'name': '数字8', 'distance': '4.5km', 'difficulty': '中等'},
      {'name': '花朵图案', 'distance': '6.2km', 'difficulty': '困难'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('选择路线'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: routes.length,
        itemBuilder: (context, index) {
          final route = routes[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Text(
                route['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.straighten, size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(route['distance']!),
                      const SizedBox(width: 16),
                      Icon(Icons.speed, size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(route['difficulty']!),
                    ],
                  ),
                ],
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('选择路线: ${route["name"]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}