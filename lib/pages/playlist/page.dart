import 'package:flutter/material.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/modules/now_playing/widget.dart';

import '../../theme.dart';
import '../../widgets.dart';

final _musics = [
  QuosMusic(
    title: 'Malembe',
    artist: 'Wilson Kentura',
    artwork: 'assets/album0.jpg',
  ),
  QuosMusic(
    title: 'Ingani',
    artist: 'Afro Warrios & Wilson Kentura feat. Lizwi',
    artwork: 'assets/album3.jpg',
  ),
  QuosMusic(
    title: 'Haka',
    artist: 'Wilson Kentura',
    artwork: 'assets/album1.jpg',
  ),
  QuosMusic(
    title: 'Babulla',
    artist: 'Wilson Kentura',
    artwork: 'assets/album2.jpg',
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
          separatorBuilder: (context, index) => const Divider(height: 0),
          itemBuilder: (context, index) {
            final _music = _musics[index];

            return QuosMusicListTile(
              music: _music,
              onTap: () {},
            );
          },
          itemCount: _musics.length,
        ),
      ),
    );
  }
}

class QuosMusicListTile extends StatelessWidget {
  final QuosMusic music;
  final Function()? onTap;

  const QuosMusicListTile({
    Key? key,
    required this.music,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          clipBehavior: Clip.hardEdge,
          constraints: const BoxConstraints(maxHeight: 80),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(appBorderRadius),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: QuosMusicArt(
                  music: music,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      music.title!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SpaceY(),
                    Text(
                      music.artist!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: mutedTextColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SpaceX(),
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
        ),
      ),
    );
  }
}
