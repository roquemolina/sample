import 'package:flutter/material.dart';
import 'package:sample/example_app.dart';

void main() => runApp(const DetailScreen());

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Column(
          children: [
            const Text('Hello World'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(
                            user: null,
                          )));
                },
                child: const Text('Volver Home'))
          ],
        ),
      ),
    );
  }
}
