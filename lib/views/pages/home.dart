import 'package:flutter/material.dart';
import 'package:opera_news/models/post_model.dart';
import 'package:opera_news/services/post_service.dart';
import '../../widgets/MyPost.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  final PostService _postService = PostService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder<List<Post>>(
        future: _postService.getPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Hiển thị tiêu đề hoặc indicator khi đang tải dữ liệu
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            // Hiển thị thông báo lỗi nếu có lỗi xảy ra
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            // Hiển thị danh sách bài post nếu có dữ liệu
            List<Post> posts = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                children: posts.map((post) => MyPost(post: post)).toList(),
              ),
            );
          } else {
            // Trường hợp không có dữ liệu nào được tìm thấy
            return Center(
              child: Text('No posts found.'),
            );
          }
        },
      ),
    );
  }
}
