
import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';

void main() {
  testWidgets('Pawon Ainun berhasil ditampilkan',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PawonAinunApp());

    expect(find.text('PAWON AINUN'), findsOneWidget);
  });
}
