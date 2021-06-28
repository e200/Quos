import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/modules/player/page.dart';
import 'package:quos/modules/player/player.dart';
import 'package:quos/widgets.dart';

class QuosNowPlaying extends StatelessWidget {
  static const heroTag = 'PLAYING_NOW';

  const QuosNowPlaying({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Consumer(
        builder: (context, watch, child) {
          final _state = watch(playerControllerProvider.state);

          return _state.maybeWhen(
            playing: (
              playlist,
              music,
              musicIndex,
              duration,
              position,
              progress,
            ) {
              return GestureDetector(
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
                        QuosShaderMask(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return QuosProgressLine(
                                width: constraints.maxWidth / 100 * progress,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 7,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    LayoutBuilder(
                                      builder: (context, constraint) {
                                        return QuosMusicArt(
                                          music: music,
                                          width: constraint.maxHeight,
                                          height: constraint.maxHeight,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        );
                                      },
                                    ),
                                    const SpaceX(width: 10),
                                    Expanded(
                                      child: QuosMusicListTile(music: music),
                                    ),
                                  ],
                                ),
                              ),
                              const _PlayButton(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

class _PlayButton extends StatefulWidget {
  const _PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  __PlayButtonState createState() => __PlayButtonState();
}

class __PlayButtonState extends State<_PlayButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final _state = watch(playerControllerProvider.state);

        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              context.read(playerControllerProvider).toggle();

              if (_animation.isCompleted) {
                _animationController.reverse();
              } else {
                _animationController.forward();
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: AnimatedIcon(
                progress: _animation,
                icon: _state.maybeWhen(
                  playing: (
                    playlist,
                    music,
                    musicIndex,
                    duration,
                    position,
                    progress,
                  ) {
                    return AnimatedIcons.pause_play;
                  },
                  orElse: () => AnimatedIcons.play_pause,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
