import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/modules/library/service.dart';
import 'package:quos/modules/library/state.dart';
import 'package:quos/modules/library/updater.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/modules/player/player.dart';
import 'package:quos/modules/playlist/model.dart';
import 'package:quos/pages/home/most_played_music_list.dart';
import 'package:quos/pages/playlist/page.dart';

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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    context.read(libraryUpdateStateNotifierProvider.notifier).update();
  }

  @override
  Widget build(BuildContext context) {
    return QuosScaffold(
      bottomNavigationBar: QuosBottomBar(),
      body: ProviderListener<LibraryUpdateState>(
        provider: libraryUpdateStateNotifierProvider,
        onChange: (context, value) {
          value.maybeWhen(
            updated: () {
              context.read(_mostPlayedMusicListStateProvider.notifier).load();
            },
            orElse: () {},
          );
        },
        child: RefreshIndicator(
          onRefresh:
              context.read(libraryUpdateStateNotifierProvider.notifier).update,
          child: SingleChildScrollView(
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
                            value: 1,
                            child: Text('Restore library'),
                          ),
                          const PopupMenuItem(
                            child: Text('Settings'),
                          ),
                          const PopupMenuItem(
                            child: Text('About'),
                          ),
                        ];
                      },
                      onSelected: (value) {
                        context
                            .read(libraryUpdateStateNotifierProvider.notifier)
                            .update();
                      },
                    ),
                  ],
                ),
                Wrap(
                  runSpacing: 30,
                  children: [
                    _QuosSection(
                      title: const Text('Recently played'),
                      actions: [
                        _QuosAction(
                          title: const Text(
                            'More',
                            style: TextStyle(color: Colors.grey),
                          ),
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {},
                        ),
                      ],
                      child: Consumer(
                        builder: (context, watch, child) {
                          final _state =
                              watch(_mostPlayedMusicListStateProvider);

                          return _state.maybeWhen(
                            data: (musics) => _QuosHorizontalPlaylist(
                              playlist: QuosPlaylist(
                                id: 1,
                                name: 'Recently played',
                                musics: musics,
                              ),
                            ),
                            error: (e) => Text(e.toString()),
                            orElse: () => const Text(':o'),
                          );
                        },
                      ),
                    ),
                    _QuosSection(
                      title: const Text('Mostly played'),
                      actions: [
                        _QuosAction(
                          title: const Text(
                            'More',
                            style: TextStyle(color: Colors.grey),
                          ),
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const QuosPlaylistPage(
                                    title: Text('Mostly played'),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                      child: const _QuosHorizontalPlaylist(),
                    ),
                    _QuosSection(
                      title: const Text('Albums'),
                      actions: [
                        _QuosAction(
                          title: const Text(
                            'More',
                            style: TextStyle(color: Colors.grey),
                          ),
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const QuosPlaylistPage(
                                    title: Text('Albums'),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                      child: const _QuosHorizontalPlaylist(),
                    ),
                    _QuosSection(
                      title: const Text('Genres'),
                      actions: [
                        _QuosAction(
                          title: const Text(
                            'More',
                            style: TextStyle(color: Colors.grey),
                          ),
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const QuosPlaylistPage(
                                    title: Text('Genres'),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                      child: const _QuosHorizontalPlaylist(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final _mostPlayedMusicListStateProvider = StateNotifierProvider<
    _MostPlayedMusicListNotifier, MostPlayedMusicListState>((ref) {
  return _MostPlayedMusicListNotifier(
    musicLibrary: ref.watch(musicLibraryProvider),
  );
});

class _MostPlayedMusicListNotifier
    extends StateNotifier<MostPlayedMusicListState> {
  final MusicLibrary musicLibrary;

  _MostPlayedMusicListNotifier({
    required this.musicLibrary,
  }) : super(const MostPlayedMusicListState.initial());

  Future<void> load() async {
    state = const MostPlayedMusicListState.loading();

    try {
      final _musics = await musicLibrary.getMostPlayed();

      state = MostPlayedMusicListState.data(_musics);
    } catch (e) {
      state = MostPlayedMusicListState.error(e);
    }
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

class _QuosAction extends StatelessWidget {
  final Widget icon;
  final Widget title;
  final Function()? onTap;

  const _QuosAction({
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

class _QuosHorizontalPlaylist extends StatelessWidget {
  final QuosPlaylist? playlist;

  const _QuosHorizontalPlaylist({
    Key? key,
    this.playlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final __musics = playlist?.musics ?? _musics;

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
          final _music = __musics[index];

          return _QuosMusicItem(
            music: _music,
            onTap: () async {
              context
                  .read(playerControllerProvider.notifier)
                  .play(playlist!, index);
            },
          );
        },
        itemCount: __musics.length,
      ),
    );
  }
}

class _QuosMusicItem extends StatelessWidget {
  final QuosMusic music;
  final Function()? onTap;

  const _QuosMusicItem({
    Key? key,
    required this.music,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: QuosMusicArt(music: music),
            ),
            const SpaceY(height: 10),
            _QuosMusicLabel(music: music),
          ],
        ),
      ),
    );
  }
}

class _QuosMusicLabel extends StatelessWidget {
  final QuosMusic music;

  const _QuosMusicLabel({
    Key? key,
    required this.music,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _musicTitle = music.title != null && music.title!.trim().isNotEmpty
        ? music.title!
        : music.fileName!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _musicTitle,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        const SpaceY(),
        Text(
          music.artist!,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: mutedTextColor,
          ),
        ),
      ],
    );
  }
}

class _QuosSection extends StatelessWidget {
  final Widget? title;
  final List<Widget> actions;
  final Widget child;

  const _QuosSection({
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
