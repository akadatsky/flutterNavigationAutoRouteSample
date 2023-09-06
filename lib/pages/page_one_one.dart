import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SomeParams {
  final String userName;

  SomeParams(this.userName);
}

@RoutePage()
class PageOneOne extends StatelessWidget {
  final SomeParams someParams;

  const PageOneOne({
    super.key,
    required this.someParams,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('PageOneOne'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('params: ${someParams.userName}'),
              ElevatedButton(
                child: const Text('Go home page'),
                onPressed: () {
                  context.router.popUntilRoot();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
