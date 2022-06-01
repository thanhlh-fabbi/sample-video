import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webview video'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            child: 
            WebView(
              initialUrl:
                  'https://www.youtube.com/embed/kdVeYgGtO3Q?rel=0&amp;controls=1&amp;showinfo=0&amp;autoplay=1',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController controller) =>
                  _controller = controller,
            ),
          ),
          SizedBox(
            height: 300,
            child: WebView(
              initialUrl: 'https://player.vimeo.com/video/710967327',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController controller) =>
                  _controller = controller,
            ),
          ),
        ],
      ),
    );
  }
}
