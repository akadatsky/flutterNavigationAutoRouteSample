import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_auto_route/router/router.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Some title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Some caption'),
            ElevatedButton(
              child: const Text('Screen1'),
              onPressed: () {
                context.router.push(const RouteOne());
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Screen2'),
              onPressed: () {
                context.router.push(const RouteTwo());
              },
            ),
          ],
        ),
      ),
    );
  }
}
