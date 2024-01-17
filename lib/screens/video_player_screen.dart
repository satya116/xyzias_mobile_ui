import 'package:flutter/material.dart';
import 'package:saffron_ias_flutter_mobile/widgets/video_widget_in_playlist.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});
  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  double videoTimeStamp = 0;
  bool isVideoPaused = false;
  bool isVideoMute = false;
  bool isVideoVolumeLow = true;
  bool isVideoControls = true;
  bool isVideoFullScreen = true;

  OverlayPortalController overlayPortalController = OverlayPortalController();

  @override
  void initState() {
    // Replace 'assets/sample_video.mp4' with the path to your video file
    _controller = VideoPlayerController.networkUrl(
      Uri.parse('https://www.youtube.com/watch?v=yNrmluocNFw&t=120s'),
    );
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true); // Set to true if you want the video to loop
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(
                      _controller,
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      Slider(
                          value: videoTimeStamp,
                          onChanged: (doublex) {
                            setState(() {
                              videoTimeStamp = doublex;
                            });
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      isVideoPaused
                          ? const Icon(Icons.pause)
                          : const Icon(Icons.play_arrow), //Icons.play_arrow

                      isVideoMute
                          ? const Icon(Icons.volume_off)
                          : (isVideoVolumeLow
                              ? const Icon(Icons.volume_down)
                              : const Icon(Icons.volume_up)),
                      Slider(
                          value: videoTimeStamp,
                          onChanged: (doublex) {
                            setState(() {
                              videoTimeStamp = doublex;
                            });
                          }),
                      InkWell(
                          onTap: () {
                            // overlayPortalController.show();
                            overlayPortalController.toggle();
                          },
                          child: const Icon(Icons.settings)),

                      isVideoFullScreen
                          ? const Icon(Icons.fullscreen_exit)
                          : const Icon(Icons.fullscreen),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return const VideoWidgetInPlayList();
                  }),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
}

class VideoPlayerSettingsOverlayWidget extends StatefulWidget {
  const VideoPlayerSettingsOverlayWidget({super.key});

  @override
  State<VideoPlayerSettingsOverlayWidget> createState() =>
      _VideoPlayerSettingsOverlayWidgetState();
}

class _VideoPlayerSettingsOverlayWidgetState
    extends State<VideoPlayerSettingsOverlayWidget> {
  OverlayPortalController overlayPortalController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
        controller: overlayPortalController,
        overlayChildBuilder: (buildContextx) {
          return Positioned(
            right: 150,
            top: 250,
            child: Column(
              children: [
                Container(
                  width: 55,

                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(11)),
                  // margin: const EdgeInsets.all(55),
                  child: const Column(
                      // height: 122,
                      // width: 122,
                      // color: Colors.amber,
                      children: [
                        Text("Overlay"),
                        Text("Overlay"),
                        Text("Overlay"),
                        Text("Overlay"),
                        Text("Overlay"),
                      ]),
                ),
              ],
            ),
          );
        });
  }
}
