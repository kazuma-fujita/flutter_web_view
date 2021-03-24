import 'package:flutter/material.dart';
import 'package:flutter_web_view/web_view_screen.dart';

class FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Web View Sample'),
        ),
        body: _FirstView(),
      ),
    );
  }
}

class _FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<WebViewScreen>(
              builder: (BuildContext _context) => WebViewScreen(),
            ),
          );
        },
        child: const Text('Launch Web View'),
      ),
    );
  }
}
