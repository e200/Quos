import 'package:flutter/material.dart';
import 'package:quos/theme.dart';

import 'modules/library/widget.dart';
import 'modules/music/model.dart';
import 'modules/now_playing/widget.dart';

class QuosScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;

  const QuosScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      body: QuosBackground(
        child: SafeArea(child: body),
      ),
    );
  }
}

class QuosBackground extends StatelessWidget {
  final Widget child;

  const QuosBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: appBackgroundGradientColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        child,
      ],
    );
  }
}

class QuosMusicArt extends StatelessWidget {
  final QuosMusic music;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;

  const QuosMusicArt({
    Key? key,
    this.borderRadius,
    required this.music,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(appBorderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(appBorderRadius),
        child: Builder(
          builder: (context) {
            if (music.artwork == null) {
              return Container(
                color: appBackgroundGradientColors.last,
                child: const Center(
                  child: Icon(
                    Icons.music_note,
                    size: 32,
                  ),
                ),
              );
            }

            return Image.asset(
              music.artwork!,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}

class QuosMusicListTile extends StatelessWidget {
  final QuosMusic music;

  const QuosMusicListTile({
    Key? key,
    required this.music,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          music.title ?? music.fileName!,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          music.artist!,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: mutedTextColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class QuosTrackProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return QuosShaderMask(
      child: Row(
        children: [
          const QuosProgressLine(
            lineRadius: 5,
            height: 3,
            width: 150,
          ),
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class QuosShaderMask extends StatelessWidget {
  final Widget child;

  const QuosShaderMask({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          colors: [
            Colors.deepPurple,
            Colors.deepOrange,
          ],
        ).createShader(bounds);
      },
      child: child,
    );
  }
}

class QuosProgressLine extends StatelessWidget {
  final double? width;
  final double? height;
  final double? lineRadius;

  const QuosProgressLine({
    Key? key,
    this.width,
    this.height,
    this.lineRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = height ?? 2;
    final _borderRadius = lineRadius != null
        ? BorderRadius.circular(lineRadius!)
        : BorderRadius.zero;

    return Container(
      height: _height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: _borderRadius,
      ),
    );
  }
}

class QuosBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        QuosLibraryUpdateStatus(),
        const QuosNowPlaying(),
      ],
    );
  }
}

class SpaceY extends StatelessWidget {
  final double height;

  const SpaceY({
    Key? key,
    this.height = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class SpaceX extends StatelessWidget {
  final double width;

  const SpaceX({
    Key? key,
    this.width = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
