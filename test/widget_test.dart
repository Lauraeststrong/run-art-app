import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:run_art_app/main.dart';

void main() {
  testWidgets('App starts and shows login', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: RunArtApp()));
    await tester.pumpAndSettle();
    
    expect(find.text('图案跑'), findsOneWidget);
  });
}