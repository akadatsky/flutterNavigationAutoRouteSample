import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text('PageTwo'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
            child: ElevatedButton(
              child: const Text('Go back'),
              onPressed: () {
                context.router.pop( );
              },
            ),
        ),
      ),
    );
  }
}
