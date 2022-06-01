import 'package:flutter/material.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';

class VimeoVideoPage extends StatefulWidget {
  const VimeoVideoPage({Key? key}) : super(key: key);

  @override
  State<VimeoVideoPage> createState() => _VimeoVideoPageState();
}

class _VimeoVideoPageState extends State<VimeoVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vimeo video'),
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 250,
              child: VimeoPlayer(
                videoId: '710967327',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
