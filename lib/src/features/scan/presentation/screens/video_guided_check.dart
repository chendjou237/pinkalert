import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BreastCancerSelfCheckVideoPage extends StatefulWidget {
  const BreastCancerSelfCheckVideoPage({super.key});

  @override
  State<BreastCancerSelfCheckVideoPage> createState() =>
      _BreastCancerSelfCheckVideoPageState();
}

class _BreastCancerSelfCheckVideoPageState
    extends State<BreastCancerSelfCheckVideoPage> {
  final String videoUrl = 'https://www.youtube.com/watch?v=UOZ6zMYyf8Q';
  // Example video URL

  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breast Cancer Self-Check'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Performing a Breast Self-Check',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Watch this video to learn how to perform a breast self-check:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              /* HtmlWidget(
                '<iframe width="100%" height="315" src="$videoUrl" frameborder="0" allowfullscreen></iframe>',
              ), */
              if (_controller.value.isInitialized)
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              else
                Container(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
