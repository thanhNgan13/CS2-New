import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;

class NewsItem {
  final String title;
  final String link;
  final String pubDate;
  final String source;
  final String content;
  final String imageUrl;

  NewsItem(
      {required this.title,
      required this.link,
      required this.pubDate,
      required this.source,
      required this.content,
      required this.imageUrl});
}

class CrawlPage extends StatefulWidget {
  const CrawlPage({Key? key}) : super(key: key);

  @override
  State<CrawlPage> createState() => _CrawlPageState();
}

class _CrawlPageState extends State<CrawlPage> {
  late List<NewsItem> _newsItems;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _newsItems = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                fetchData();
              },
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child:
                    const Icon(Icons.download, size: 50.0, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            _isLoading
                ? CircularProgressIndicator() // Hiển thị hiệu ứng loading khi _isLoading là true
                : Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _newsItems.map((item) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Title: ${item.title}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Link: ${item.link}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Content: ${item.content}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Image: ${item.imageUrl}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'PubDate: ${item.pubDate}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Source: ${item.source}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Future<void> fetchData() async {
    setState(() {
      _isLoading = true; // Bắt đầu hiển thị hiệu ứng loading
    });

    final response = await http.get(Uri.parse(
        'https://news.google.com/rss/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNRFp1ZEdvU0FtVnVHZ0pWVXlnQVAB?hl=en-US&gl=US&ceid=US%3Aen'));

    if (response.statusCode == 200) {
      final document = parser.parse(response.body);
      final items = document.getElementsByTagName('item');

      List<NewsItem> newsList = [];

      for (var item in items) {
        String title = item.getElementsByTagName('title').first.text;
        String link =
            'https://news.google.com/rss/articles/${item.getElementsByTagName('guid').first.text}';
        String pubDate = item.getElementsByTagName('pubDate').first.text;
        String source = item.getElementsByTagName('source').first.text;

        // Lấy nội dung và hình ảnh từ link
        var linkResponse = await http.get(Uri.parse(link));

        if (linkResponse.statusCode == 200) {
          var linkDocument = parser.parse(linkResponse.body);
          var linkResponseDone = await http.get(
              Uri.parse(linkDocument.getElementsByTagName('a').first.text));

          if (linkResponseDone.statusCode == 200) {
            var linkDocumentDone = parser.parse(linkResponseDone.body);
            // Lấy nội dung thẻ p
            String content =
                linkDocumentDone.getElementsByTagName('title').first.text;

            // Lấy URL của hình ảnh (nếu có)
            String imageUrl = linkDocumentDone
                    .getElementsByTagName('img')
                    .first
                    .attributes['src'] ??
                '';

            NewsItem newsItem = NewsItem(
              title: title,
              link: link,
              pubDate: pubDate,
              source: source,
              content: content,
              imageUrl: imageUrl,
            );

            print(newsItem.toString());

            newsList.add(newsItem);
          }
        }
      }

      setState(() {
        _newsItems = newsList; // Cập nhật danh sách tin tức
        _isLoading = false; // Tắt hiệu ứng loading khi đã lấy xong dữ liệu
      });
    } else {
      throw Exception('Failed to load HTML');
    }
  }
}
