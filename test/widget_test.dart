import 'package:flutter_test/flutter_test.dart';
import 'package:mini_katalog_app/main.dart';

void main() {
  testWidgets('Mini katalog uygulamasi aciliyor', (WidgetTester tester) async {
    await tester.pumpWidget(const MiniCatalogApp());

    expect(find.text('Mini Katalog'), findsOneWidget);
  });
}