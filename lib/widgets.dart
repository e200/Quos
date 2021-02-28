import 'package:flutter/material.dart';
import 'package:quos/theme.dart';

class QuosScaffold extends StatelessWidget {
  final Widget body;

  const QuosScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuosBackground(
        child: body,
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
          constraints: BoxConstraints.expand(),
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
