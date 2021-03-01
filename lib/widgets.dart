import 'package:flutter/material.dart';
import 'package:quos/theme.dart';

import 'modules/music/model.dart';

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
              colors: appGradientColors,
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
  final Music music;
  final BorderRadius? borderRadius;

  const QuosMusicArt({
    Key? key,
    this.borderRadius,
    required this.music,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Stack(
          children: [
            Image.asset(
              music.art,
              fit: BoxFit.cover,
            ),
            /* Positioned.fill(
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
            ), */
          ],
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
    return Row(
      children: [
        QuosMusicArt(
          music: music,
          borderRadius: BorderRadius.circular(5),
        ),
        const SpaceX(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              music.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              music.artist,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: mutedTextColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
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
            Color(0xFF6063FE),
            Color(0xFFCF59C9),
            Color(0xFFFB826F),
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

    return Stack(
      children: [
        Container(
          height: _height,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.3),
            borderRadius: _borderRadius,
          ),
        ),
        Container(
          height: _height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: _borderRadius,
          ),
        ),
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
