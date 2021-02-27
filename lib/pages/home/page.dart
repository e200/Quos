
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
