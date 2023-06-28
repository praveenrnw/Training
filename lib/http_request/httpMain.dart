import 'package:flutter/material.dart';
import 'package:training/http_request/htttp_service.dart';
import 'package:training/http_request/postsPage.dart';

class HttpMain extends StatelessWidget {
  const HttpMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(
          Icons.http,
          color: Colors.white,
          size: 30,
        ),
        title: const Text(
          'HTTP Request',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (p) => PostsPage(),
                  ),
                );
              },
              child: const Text(
                'PostsPage',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
