import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Coming Soon'),
                content: const Text('This feature is coming soon!'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
            );}, child: null,
        ),
      ),
    );
  }
}