import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:videowebview/view/video_list.dart';
import 'package:videowebview/view/vimeo_video_page.dart';
import 'package:videowebview/view/webview.dart';
import 'package:videowebview/view/youtube_video_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Option'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _button(
            title: 'Video Youtube',
            page: VideoList(),
          ),
          _button(
            title: 'Video on Webview',
            page: WebViewPage(),
          ),
          _button(
            title: 'Video Vimeo',
            page: VimeoVideoPage(),
          ),
        ],
      ),
    );
  }

  Widget _button({String? title, required Widget page}) => GestureDetector(
        onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => page,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              '$title',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
}
