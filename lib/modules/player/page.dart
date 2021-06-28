import 'package:flutter/material.dart';
import 'package:quos/theme.dart';
import 'package:quos/widgets.dart';

import '../music/model.dart';

class QuosPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _music = QuosMusic(
      title: 'Haka',
      artist: 'Wilson Kentura',
      artwork: 'assets/album1.jpg',
    );

    return QuosScaffold(
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 64,
                      vertical: 32,
                    ),
                    child: QuosMusicArt(
                      music: _music,
                    ),
                  ),
                  Text(
                    _music.title!,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SpaceY(height: 10),
                  Text(
                    _music.artist!,
                    style: const TextStyle(
                      color: mutedTextColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        const SpaceY(height: 32),
                        QuosTrackProgress(),
                        const SpaceY(height: 15),
                        Row(
                          children: [
                            const Text(
                              '1:30',
                              style: TextStyle(
                                color: mutedTextColor,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              '6:17',
                              style: TextStyle(
                                color: mutedTextColor,
                              ),
                            ),
                          ],
                        ),
                        const SpaceY(height: 32),
                        const _PlayerButtons(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: kToolbarHeight,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                color: Colors.grey,
                icon: Transform.scale(
                  scale: 1.5,
                  child: const Icon(Icons.keyboard_arrow_down),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  color: Colors.grey,
                  icon: const Icon(
                    Icons.shuffle,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.grey,
                  icon: const Icon(Icons.favorite_border_outlined),
                  onPressed: () {},
                ),
                PopupMenuButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem(
                        child: Text('About'),
                      ),
                    ];
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayerButtons extends StatefulWidget {
  const _PlayerButtons({
    Key? key,
  }) : super(key: key);

  @override
  __PlayerButtonsState createState() => __PlayerButtonsState();
}

class __PlayerButtonsState extends State<_PlayerButtons>
    with SingleTickerProviderStateMixin {
  late AnimationController? _animationController;
  late Animation<double>? _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.repeat),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.skip_previous),
              onPressed: () {},
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_animationController!.isCompleted) {
                _animationController!.reverse();
              } else {
                _animationController!.forward();
              }
            },
            child: AnimatedIcon(
              progress: _animation!,
              icon: AnimatedIcons.play_pause,
              size: 82,
            ),
          ),
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.skip_next),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.playlist_play),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
