// Basic Flutter widget test.
// Learn more at https://docs.flutter.dev/testing/overview#widget-tests.

//import 'package:flutter_test/flutter_test.dart';
//import 'package:layout/main.dart';

//void main() {
  //testWidgets('Example app smoke test', (tester) async {
    // Build our app and trigger a frame.
    //await tester.pumpWidget(const MyApp());

    //expect(find.text('Flutter layout demo'), findsOneWidget);
  //});
//}

//UNTUK file main
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
//import 'package:flutter_application_2/widged/row.dart';

void main() {
  debugPaintSizeEnabled = true; // Remove to suppress visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Change to buildColumn() for the other column example
        body: Center(child: buildRow()),
      ),
    );
  }

  Widget buildRow() =>
      // #docregion row
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/pic1.jpg'),  // Fixed 'Image.asset'
          Image.asset('assets/pic2.jpg'),
          Image.asset('assets/pic3.jpg'),
        ],
      );
  // #enddocregion row

  Widget buildColumn() =>
      // #docregion column
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/pic1.jpg'),
          Image.asset('assets/pic2.jpg'),
          Image.asset('assets/pic3.jpg'),  // Fixed typo in 'assets'
        ],
      );
  // #enddocregion column
}
