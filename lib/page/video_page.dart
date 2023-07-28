import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_demo_app/better_player_controler/better_player_material_controls.dart';
import 'package:my_demo_app/widget/main_drawer.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late BetterPlayerController _betterPlayerController;
  final GlobalKey<_VideoPageState> _betterPlayerKey =
      GlobalKey<_VideoPageState>();

  @override
  void initState() {
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    );

    BetterPlayerConfiguration betterPlayerConfiguration =
        BetterPlayerConfiguration(
      autoPlay: true,
      aspectRatio: 16 / 9,
      fit: BoxFit.cover,
      autoDetectFullscreenDeviceOrientation: true,
      expandToFill: true,
      deviceOrientationsOnFullScreen: const [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight
      ],
      deviceOrientationsAfterFullScreen: const [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight
      ],
      controlsConfiguration: BetterPlayerControlsConfiguration(
        playerTheme: BetterPlayerTheme.custom,
        customControlsBuilder: (controller, onPlayerVisibilityChanged) =>
            BetterPlayerMaterialControls(
          controlsConfiguration: const BetterPlayerControlsConfiguration(
            controlBarColor: Colors.black45,
          ),
          onControlsVisibilityChanged: onPlayerVisibilityChanged,
        ),
      ),
    );

    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(betterPlayerDataSource);
    _betterPlayerController.setBetterPlayerGlobalKey(_betterPlayerKey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      drawer: const MainDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: BetterPlayer(
                  controller: _betterPlayerController,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            height: 300,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://loremflickr.com/g/320/240/paris'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
