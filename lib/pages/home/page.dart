import 'package:flutter/material.dart';
import 'package:quos/modules/music/model.dart';
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
    return Scaffold(
      body: QuosBackground(
          child: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                floating: true,
                elevation: 0,
                title: _HomePageTitle(),
                actions: [
                  PopupMenuButton(
                    icon: Icon(Icons.more_vert),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          child: Text('Settings'),
                        ),
                        PopupMenuItem(
                          child: Text('About'),
                        ),
                      ];
                    },
                  ),
                ],
              ),
            ];
          },
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Wrap(
              runSpacing: 30,
              children: [
                QuosSection(
                  title: Text('Recently played'),
                  actions: [
                    QuosAction(
                      title: Text(
                        'More',
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return QuosPlaylistPage();
                          },
                        ));
                      },
                    ),
                  ],
                  child: QuosMusicList(),
                ),
                QuosSection(
                  title: Text('Mostly played'),
                  actions: [
                    QuosAction(
                      title: Text(
                        'More',
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                  child: QuosMusicList(),
                ),
                QuosSection(
                  title: Text('Albums'),
                  actions: [
                    QuosAction(
                      title: Text(
                        'More',
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                  child: QuosMusicList(),
                ),
                QuosSection(
                  title: Text('Genres'),
                  actions: [
                    QuosAction(
                      title: Text(
                        'More',
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                  child: QuosMusicList(),
                ),
                SpaceY(),
              ],
            ),
          ),
        ),
      )),
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
        Icon(Icons.graphic_eq),
        SpaceX(width: 10),
        Text(
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
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        separatorBuilder: (context, index) {
          return SpaceX(width: 15);
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
          _QuosMusicArt(music: music),
          SpaceY(height: 10),
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
          music.title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        SpaceY(),
        Text(
          music.artist,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: mutedTextColor,
          ),
        ),
      ],
    );
  }
}

class _QuosMusicArt extends StatelessWidget {
  const _QuosMusicArt({
    Key? key,
    required this.music,
  }) : super(key: key);

  final Music music;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(appBorderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(appBorderRadius),
        child: Stack(
          children: [
            Image.asset(
              music.art,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    size: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
            style: TextStyle(fontSize: 20),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  title!,
                  Spacer(),
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
