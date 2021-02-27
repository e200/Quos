
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
