import 'package:flutter/material.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/modules/player.dart';
import 'package:quos/theme.dart';
import 'package:quos/widgets.dart';

class QuosNowPlaying extends StatelessWidget {
  static const heroTag = 'PLAYING_NOW';

  const QuosNowPlaying({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final music = QuosMusic(
      title: 'Haka',
      artist: 'Wilson Kentura',
      artwork: 'assets/album1.jpg',
    );

    return Hero(
      tag: heroTag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              fullscreenDialog: true,
              pageBuilder: (context, animation, secondaryAnimation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(
                    opacity: animation,
                    child: QuosPlayerPage(),
                  ),
                );
              },
            ),
          );
        },
        child: SizedBox(
          height: 60,
          child: Material(
            color: const Color(0xFF282940),
            child: Stack(
              children: [
                const QuosShaderMask(
                  child: QuosProgressLine(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 7,
                  ),
                  child: Row(
                    children: [
                      Expanded(child: QuosMusicListTile(music: music)),
                      const _Buttons(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          color: iconButtonColor,
          icon: const Icon(Icons.play_arrow),
          onPressed: () {},
        ),
        IconButton(
          padding: EdgeInsets.zero,
          color: iconButtonColor,
          icon: const Icon(Icons.skip_next),
          onPressed: () {},
        ),
        IconButton(
          padding: EdgeInsets.zero,
          color: iconButtonColor,
          icon: const Icon(Icons.playlist_play),
          onPressed: () {},
        ),
      ],
    );
  }
}
