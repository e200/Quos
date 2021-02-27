import 'package:flutter/material.dart';
import 'package:quos/pages/home/page.dart';

import '../../widgets.dart';

class QuosPlaylistPage extends StatelessWidget {
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
                  pinned: true,
                  elevation: 0,
                  title: Text(
                    'Playlist',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
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
                        onTap: () {},
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
        ),
      ),
    );
  }
}
