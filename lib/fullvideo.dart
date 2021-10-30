import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
final urlPortraitVideo =
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VideoApp(),
  ));
}

class VideoApp extends StatefulWidget {
  // const VideoApp({required Key key}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController controller;

  // bool disposed_vid = false;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.network(urlPortraitVideo)
      ..addListener(() => setState(() {}))
      ..setLooping(false)
      ..initialize().then((_) => controller.play());
    // controller.setLooping(false);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return controller != null && controller.value.isInitialized
        ? Container(alignment: Alignment.topCenter, child: buildVideo())
        : Center(child: CircularProgressIndicator());
  }

  Widget buildVideo() => Stack(
    fit: StackFit.expand,
    children: <Widget>[
      buildVideoPlayer(),
      BasicOverlayWidget(controller: controller,),
    ],
  );

  Widget buildVideoPlayer() => buildFullScreen(
    child: AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller),
    ),
  );

  Widget buildFullScreen({
    required Widget child,
  }) {
    final size = controller.value.size;
    final width = size.width;
    final height = size.height;

    return FittedBox(
      fit: BoxFit.cover,
      child: SizedBox(width: width, height: height, child: child),
    );
  }
}

class BasicOverlayWidget extends StatelessWidget {
  final VideoPlayerController controller;

  BasicOverlayWidget({
    // required Key key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () =>
    controller.value.isPlaying ? controller.pause() : controller.play(),
    child: Stack(
      children: <Widget>[
        buildPlay(),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: buildIndicator(),
        ),
        Positioned(
          top: 300,
          bottom: 0,
          child: GestureDetector(
            onTap: (){},
            child: Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Instruction', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.none, color: Colors.black, fontSize: 15),),
                      Text('Here is my new 2020 resolution that what I have decided to do commitment towards myself and '
                          'I think you should also do commitment to yourself',
                        style: TextStyle(fontSize: 10, color: Colors.black, decoration: TextDecoration.none),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Benefits', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.none, color: Colors.black, fontSize: 15),),
                      Text('Here is my new 2020 resolution that what I have decided to do commitment towards myself',
                        style: TextStyle(fontSize: 10, color: Colors.black, decoration: TextDecoration.none),)
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
  Widget buildIndicator() => VideoProgressIndicator(
    controller,
    allowScrubbing: true,
  );

  Widget buildPlay() => controller.value.isPlaying
      ? Container()
      : Container(
    alignment: Alignment.center,
    color: Colors.black26,
    child: Icon(Icons.play_arrow, color: Colors.white, size: 80),
  );
}