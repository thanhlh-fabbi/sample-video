import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:videowebview/view/youtube_video_page.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Creates list of video players
class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final List<String> _ids = [
    'kdVeYgGtO3Q',
    'BHAUrxgsEdQ',
  ];
  final List<YoutubePlayerController> _controllers = [
    'kdVeYgGtO3Q',
    'BHAUrxgsEdQ',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Video Youtube Get by ID',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onDoubleTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => YoutubeVideoPage(
                  videoID: _ids[index],
                  listVideo: _ids,
                ),
              ),
            ),
            child: YoutubePlayer(
              key: ObjectKey(_controllers[index]),
              controller: _controllers[index],
              actionsPadding: const EdgeInsets.only(left: 16.0),
              topActions: [],
              bottomActions: [
                CurrentPosition(),
                const SizedBox(width: 10.0),
                ProgressBar(isExpanded: true),
                const SizedBox(width: 10.0),
                RemainingDuration(),
                FullScreenButton(),
              ],
            ),
          );
        },
        itemCount: _ids.length,
        separatorBuilder: (context, _) => const SizedBox(height: 10.0),
      ),
    );
  }
}
