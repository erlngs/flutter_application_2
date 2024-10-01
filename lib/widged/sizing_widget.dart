import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

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
        // Change to buildFoo() for the other examples
        body: Center(child: buildExpandedImages()),
      ),
    );
  }

  Widget buildOverflowingRow() =>
      // #docregion overflowing-row
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/pic1.jpg'),
          Image.asset('assets/pic2.jpg'),
          Image.asset('assets/pic3.jpg'),
        ],
      );
  // #enddocregion overflowing-row

  Widget buildExpandedImages() =>
      // #docregion expanded-images
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('assets/pic1.jpg',
            fit: BoxFit.cover,),
          ),
          Expanded(
            child: Image.asset('assets/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('assets/pic3.jpg'),
          ),
        ],
      );
  // #enddocregion expanded-images

  Widget buildExpandedImagesWithFlex() =>
      // #docregion expanded-images-with-flex
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('assets/pic1.jpg'),
          ),
          Expanded(
            flex: 100,
            child: Image.asset('assets/pic2.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('assets/pic3.jpg'),
          ),
        ],
      );
  // #enddocregion expanded-images-with-flex
}
