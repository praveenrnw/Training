import 'package:flutter/material.dart';
import 'package:training/http_request/htttp_service.dart';
import 'package:training/http_request/post_model.dart';

class PostDetails extends StatelessWidget {
  final Post post;
  final HttpService httpService = HttpService();
  PostDetails({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: const Icon(Icons.local_post_office, color: Colors.white),
          title: Text(
            post.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.delete),
          onPressed: () async {
            await httpService.deletePost(post.id);
            // ignore: use_build_context_synchronously
            Navigator.of(context).pop();
          },
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Title'),
                    subtitle: Text(post.title),
                  ),
                  ListTile(
                    title: const Text('ID'),
                    subtitle: Text(post.id.toString()),
                  ),
                  ListTile(
                    title: const Text('User ID'),
                    subtitle: Text(post.userId.toString()),
                  ),
                  ListTile(
                    title: const Text('Body'),
                    subtitle: Text(post.body),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
