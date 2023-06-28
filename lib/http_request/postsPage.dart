import 'package:flutter/material.dart';
import 'package:training/http_request/htttp_service.dart';
import 'package:training/http_request/post_details.dart';
import 'package:training/http_request/post_model.dart';

class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: const Icon(Icons.local_post_office, color: Colors.white),
        title: const Text(
          'POSTS',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: httpService.getPosts(),
          builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              List<Post>? posts = snapshot.data;
              return Card(
                child: ListView(
                  children: posts!
                      .map((Post post) => ListTile(
                            title: Text(post.title),
                            subtitle: Text(post.userId.toString()),
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PostDetails(post: post)),
                            ),
                          ))
                      .toList(),
                ),
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
