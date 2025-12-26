import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_audio_room/zego_uikit_prebuilt_live_audio_room.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // ✅ ZEGO INFO
  static const int appID = 1987953154;
  static const String appSign =
      "f60b736bd7e076c9c453c087c87de2495b972697aa06a93e46966c86f9b76f84";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Rose-live • Voice"),
        centerTitle: true,
      ),
      body: ZegoUIKitPrebuiltLiveAudioRoom(
        appID: appID,
        appSign: appSign,

        userID: DateTime.now().millisecondsSinceEpoch.toString(),
        userName: "Guest",

        roomID: "rose_live_room",

        config: ZegoUIKitPrebuiltLiveAudioRoomConfig.host()
          ..roomSeatConfig = ZegoLiveAudioRoomSeatConfig(
            seatCount: 9, // 🎤 9 seats
            layout: ZegoLiveAudioRoomLayout.row,
          )
          ..turnOnMicrophoneWhenJoining = true
          ..useSpeakerWhenJoining = true
          ..topMenuBarConfig.isVisible = true
          ..bottomMenuBarConfig.isVisible = true
          ..background = Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.pink],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
      ),
    );
  }
}
