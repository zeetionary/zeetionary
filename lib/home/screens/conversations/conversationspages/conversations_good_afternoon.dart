import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ConversationsGoodAfternoon extends StatefulWidget {
  @override
  _ConversationsGoodAfternoonState createState() => _ConversationsGoodAfternoonState();
}

class _ConversationsGoodAfternoonState extends State<ConversationsGoodAfternoon> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  @override
  void initState() {
    super.initState();

    // Load the audio file
    _audioPlayer.setSource(AssetSource('assets/conversations/audio.mp3'));

    // Listen to changes in player state
    _audioPlayer.onDurationChanged.listen((duration) {
      setState(() {
        _duration = duration;
      });
    });

    _audioPlayer.onPositionChanged.listen((position) {
      setState(() {
        _position = position;
      });
    });

    _audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        _isPlaying = false;
        _position = Duration.zero;
      });
    });
  }

  void _playPause() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.resume(); // If the audio was already loaded
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  void _seekTo(Duration position) {
    _audioPlayer.seek(position);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mini Player Example')),
      // body: Center(
      //   child: Text('Welcome to the Audio Player'),
      // ),
      body: BottomAppBar(
        child: Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                min: 0.0,
                max: _duration.inSeconds.toDouble(),
                value: _position.inSeconds.toDouble().clamp(0.0, _duration.inSeconds.toDouble()),
                onChanged: (value) {
                  _seekTo(Duration(seconds: value.toInt()));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.music_note),
                  Text('Now Playing: Example Song'),
                  IconButton(
                    icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                    onPressed: _playPause,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
