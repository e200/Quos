import 'package:flutter/material.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/modules/now_playing/widget.dart';
import 'package:quos/pages/playlist/page.dart';

import '../../theme.dart';
import '../../widgets.dart';

final _musics = [
  Music(
    title: 'Malembe',
    artist: 'Wilson Kentura',
    art: 'assets/album0.jpg',
  ),
  Music(
    title: 'Ingani',
    artist: 'Afro Warrios & Wilson Kentura feat. Lizwi',
    art: 'assets/album3.jpg',
  ),
  Music(
    title: 'Haka',
    artist: 'Wilson Kentura',
    art: 'assets/album1.jpg',
  ),
  Music(
    title: 'Babulla',
    artist: 'Wilson Kentura',
    art: 'assets/album2.jpg',
  ),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return QuosScaffold(
      bottomNavigationBar: const QuosNowPlaying(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 30),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const _HomePageTitle(),
              actions: [
                PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
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
            Wrap(
              runSpacing: 30,
              children: [
                QuosSection(
                  title: const Text('Recently played'),
                  actions: [
                    QuosAction(
                      title: const Text(
                        'More',
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const QuosPlaylistPage(
                              title: Text('Recently played'),
                            );
                          },
                        ));
                      },
                    ),
                  ],
                  child: const QuosMusicList(),
                ),
                QuosSection(
                  title: const Text('Mostly played'),
                  actions: [
                    QuosAction(
                      title: const Text(
                        'More',
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const QuosPlaylistPage(
                              title: Text('Mostly played'),
                            );
                          },
                        ));
                      },
                    ),
                  ],
                  child: const QuosMusicList(),
                ),
                QuosSection(
                  title: const Text('Albums'),
                  actions: [
                    QuosAction(
                      title: const Text(
                        'More',
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const QuosPlaylistPage(
                              title: Text('Albums'),
                            );
                          },
                        ));
                      },
                    ),
                  ],
                  child: const QuosMusicList(),
                ),
                QuosSection(
                  title: const Text('Genres'),
                  actions: [
                    QuosAction(
                      title: const Text(
                        'More',
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const QuosPlaylistPage(
                              title: Text('Genres'),
                            );
                          },
                        ));
                      },
                    ),
                  ],
                  child: const QuosMusicList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _HomePageTitle extends StatelessWidget {
  const _HomePageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.graphic_eq),
        const SpaceX(width: 10),
        const Text(
          'Quos Player',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class QuosAction extends StatelessWidget {
  final Widget icon;
  final Widget title;
  final Function()? onTap;

  const QuosAction({
    Key? key,
    required this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Row(
        children: [
          title,
          icon,
        ],
      ),
    );
  }
}

class QuosMusicList extends StatelessWidget {
  const QuosMusicList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 167,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        separatorBuilder: (context, index) {
          return const SpaceX(width: 15);
        },
        itemBuilder: (context, index) {
          final _music = _musics[index];

          return QuosMusicItem(music: _music);
        },
        itemCount: _musics.length,
      ),
    );
  }
}

class QuosMusicItem extends StatelessWidget {
  final Music music;

  const QuosMusicItem({
    Key? key,
    required this.music,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuosMusicArt(music: music),
          const SpaceY(height: 10),
          _QuosMusicLabel(music: music),
        ],
      ),
    );
  }
}

class _QuosMusicLabel extends StatelessWidget {
  const _QuosMusicLabel({
    Key? key,
    required this.music,
  }) : super(key: key);

  final Music music;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          music.title!,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        const SpaceY(),
        Text(
          music.artist,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: mutedTextColor,
          ),
        ),
      ],
    );
  }
}

class QuosSection extends StatelessWidget {
  final Widget? title;
  final List<Widget> actions;
  final Widget child;

  const QuosSection({
    Key? key,
    this.title,
    this.actions = const [],
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 15,
      children: [
        if (title != null) ...[
          DefaultTextStyle(
            style: const TextStyle(fontSize: 20),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  title!,
                  const Spacer(),
                  if (actions.isNotEmpty) ...actions,
                ],
              ),
            ),
          ),
        ],
        child,
      ],
    );
  }
}
