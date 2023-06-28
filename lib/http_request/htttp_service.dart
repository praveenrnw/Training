import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:training/http_request/post_model.dart';
import 'dart:convert';

class HttpService {
  final String postUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<void> deletePost(int id) async {
    var url = Uri.parse('$postUrl/$id');
    Response response = await delete(url);
    if (response.statusCode == 200) {
      debugPrint('post is deleted');
    }
  }

  Future<List<Post>> getPosts() async {
    Response response = await get(Uri.parse(postUrl));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();

      return posts;
    } else {
      throw 'cant get a post';
    }
  }
}
