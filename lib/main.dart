import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: "Fultter Demo App"),
        '/item-1': (context) => const Screen(
              title: 'First page',
            ),
        '/item-2': (context) => const Screen(
              title: 'Second page',
            ),
        '/item-3': (context) => const Screen(
              title: 'Third page',
            ),
      },
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: const MyHomePage(title: 'Flutter Demo App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Hello world'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Burger menu'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pushNamed(context, '/item-1');
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pushNamed(context, '/item-2');
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {
                Navigator.pushNamed(context, '/item-3');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.menu, ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
      ),
      body: const Center(
        child: Text(
          'Hello world',
        ),
      ),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pushNamed(context, '/');
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
