import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_auto_route/pages/page_one_one.dart';
import 'package:test_auto_route/router/router.dart';

@RoutePage()
class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('PageOne'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Screen11'),
                onPressed: () {
                  context.router.push(
                    RouteOneOne(
                      someParams: SomeParams(_name.text),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  controller: _name,
                  decoration: const InputDecoration(
                    hintText: 'Enter your name',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
