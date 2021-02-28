import 'package:flutter/material.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/modules/now_playing/widget.dart';

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

class QuosPlaylistPage extends StatelessWidget {
  final Widget? title;

  const QuosPlaylistPage({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuosScaffold(
      bottomNavigationBar: const QuosNowPlaying(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              floating: true,
              pinned: true,
              elevation: 0,
              title: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                child: title ?? const Text('Playlist'),
              ),
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
          ];
        },
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(15),
          separatorBuilder: (context, index) => const SpaceY(height: 15),
          itemBuilder: (context, index) {
            final _music = _musics[index];

            return QuosMusicListTile(music: _music);
          },
          itemCount: _musics.length,
        ),
      ),
    );
  }
}

class QuosMusicListTile extends StatelessWidget {
  const QuosMusicListTile({
    Key? key,
    required this.music,
  }) : super(key: key);

  final Music music;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      constraints: const BoxConstraints(maxHeight: 80),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(appBorderRadius),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15).copyWith(right: 0),
            child: QuosMusicArt(
              music: music,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const SpaceX(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  music.title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SpaceY(),
                Text(
                  music.artist,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: mutedTextColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '6:17',
                  style: TextStyle(
                    color: mutedTextColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
