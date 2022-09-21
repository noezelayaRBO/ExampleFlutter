import 'package:flutter/material.dart';

void main() {
  runApp(const BottomAppBarDemo());
}

class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo({super.key});

  @override
  State createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  bool _showFab = true;
  bool _showNotch = true;
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.endDocked;

  void _onShowNotchChanged(bool value) {
    setState(() {
      _showNotch = value;
    });
  }

  void _onShowFabChanged(bool value) {
    setState(() {
      _showFab = value;
    });
  }

  void _onFabLocationChanged(FloatingActionButtonLocation? value) {
    setState(() {
      _fabLocation = value ?? FloatingActionButtonLocation.endDocked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Bottom App Bar Demo'),
        ),
        body: ListView(
          padding: const EdgeInsets.only(bottom: 88),
          children: <Widget>[
            SwitchListTile(
              title: const Text(
                'Floating Action Button',
              ),
              value: _showFab,
              onChanged: _onShowFabChanged,
            ),
            SwitchListTile(
              title: const Text('Notch'),
              value: _showNotch,
              onChanged: _onShowNotchChanged,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('Floating action button position'),
            ),
            RadioListTile<FloatingActionButtonLocation>(
              title: const Text('Docked - End'),
              value: FloatingActionButtonLocation.endDocked,
              groupValue: _fabLocation,
              onChanged: _onFabLocationChanged,
            ),
            RadioListTile<FloatingActionButtonLocation>(
              title: const Text('Docked - Center'),
              value: FloatingActionButtonLocation.centerDocked,
              groupValue: _fabLocation,
              onChanged: _onFabLocationChanged,
            ),
            RadioListTile<FloatingActionButtonLocation>(
              title: const Text('Floating - End'),
              value: FloatingActionButtonLocation.endFloat,
              groupValue: _fabLocation,
              onChanged: _onFabLocationChanged,
            ),
            RadioListTile<FloatingActionButtonLocation>(
              title: const Text('Floating - Center'),
              value: FloatingActionButtonLocation.centerFloat,
              groupValue: _fabLocation,
              onChanged: _onFabLocationChanged,
            ),
          ],
        ),
        floatingActionButton: _showFab
            ? FloatingActionButton(
          onPressed: () {},
          tooltip: 'Create',
          child: const Icon(Icons.add),
        )
            : null,
        floatingActionButtonLocation: _fabLocation,
        bottomNavigationBar: _DemoBottomAppBar(
          fabLocation: _fabLocation,
          shape: _showNotch ? const CircularNotchedRectangle() : null,
        ),
      ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations =
  <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const SampleApp());
// }
//
// class SampleApp extends StatelessWidget {
//   const SampleApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const SampleAppPage(),
//     );
//   }
// }
//
// class SampleAppPage extends StatefulWidget {
//   const SampleAppPage({super.key});
//
//   @override
//   State<SampleAppPage> createState() => _SampleAppPageState();
// }
//
// class _SampleAppPageState extends State<SampleAppPage> {
//   // Default value for toggle.
//   bool toggle = true;
//   void _toggle() {
//     setState(() {
//       toggle = !toggle;
//     });
//   }
//
//   Widget _getToggleChild() {
//     if (toggle) {
//       return const Text('Toggle One');
//     } else {
//       return ElevatedButton(
//         onPressed: () {},
//         child: const Text('Toggle Two'),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sample App'),
//       ),
//       body: Center(
//         child: _getToggleChild(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _toggle,
//         tooltip: 'Update Text',
//         child: const Icon(Icons.update),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const SampleApp());
// }
//
// class SampleApp extends StatelessWidget {
//   const SampleApp({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const SampleAppPage(),
//     );
//   }
// }
//
// class SampleAppPage extends StatefulWidget {
//   const SampleAppPage({super.key});
//
//   @override
//   State<SampleAppPage> createState() => _SampleAppPageState();
// }
//
// class _SampleAppPageState extends State<SampleAppPage> {
//   // Default placeholder text.
//   String textToShow = 'I Like Flutter';
//
//   void _updateText() {
//     setState(() {
//       // Update the text.
//       textToShow = 'Flutter is Awesome!';
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sample App'),
//       ),
//       body: Center(child: Text(textToShow)),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _updateText,
//         tooltip: 'Update Text',
//         child: const Icon(Icons.update),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:newapptest/pages/home_page.dart';
// import 'package:newapptest/pages/home.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(home: Home());
//   }
// }

// // Copyright 2018 The Flutter team. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
//
// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class RandomWords extends StatefulWidget {
//   const RandomWords({Key? key}) : super(key: key);
//
//   @override
//   State<RandomWords> createState() => _RandomWordsState();
// }
//
// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18);
//   @override
//   Widget build(BuildContext context) {
//     final wordPair = WordPair.random();
//     return Text(wordPair.asPascalCase);
//   }
// }
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // final wordPair = WordPair.random();
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Welcome to Flutter'),
//         ),
//         body: const Center(
//           child: RandomWords(),
//         ),
//       ),
//     );
//   }
// }