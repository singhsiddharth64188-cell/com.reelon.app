import 'package:flutter/material.dart';
import '../widgets/reel_player.dart';
import '../services/auth_service.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  final AuthService authService = AuthService();

  final List<String> videoUrls = [
    "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
    "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videoUrls.length,
        itemBuilder: (context, index) {
          return ReelPlayer(videoUrl: videoUrls[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout),
        onPressed: () async {
          await authService.signOut();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => LoginScreen()),
          );
        },
      ),
    );
  }
}
