import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YouTubeContainerDesignNew extends StatelessWidget {
  const YouTubeContainerDesignNew({
    super.key,
    required YoutubePlayerController controller,
  }) : _controller = controller;

  final YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        // Add to the BoxDecoration of the outer Container:
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.06),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
        border: Border.all(
          color: Theme.of(context).primaryColor.withOpacity(0.1),
          width: 1.0,
        ),
        borderRadius:
            BorderRadius.circular(15.0), // Apply border radius to the container
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: YoutubePlayer(
          controller: _controller,
          aspectRatio: 16 / 9,
        ),
      ),
    );
  }
}
