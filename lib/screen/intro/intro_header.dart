import 'package:website/export.dart';

class IntroHeader extends StatelessWidget {
  const IntroHeader({super.key});

  double topPadding(double maxWidth) {
    if (maxWidth > AppSize.tabletSize) {
      return 122;
    } else if (maxWidth > AppSize.mobileSize) {
      return 71;
    } else {
      return 53;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return SizedBox(
      height: size > AppSize.tabletSize ? 900 : 700,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding(size)),
        child: Column(
          crossAxisAlignment: .center,
          children: [
            SizedBox(height: topPadding(size)),
            IntroImage(image: ImagePath.mySelf, sizeImage: 36),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: .center,
              crossAxisAlignment: .end,
              children: [
                Image.asset(ImagePath.hello, width: 26),
                const SizedBox(width: 8),
                Text(
                  'Hi, I\'m Dencel Relles',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Style.secondaryColor,
                    fontWeight: .bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            RichText(
              textAlign: .center,
              text: TextSpan(
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Style.secondaryColor,
                  fontWeight: .bold,
                  fontSize: fontHeader(size),
                ),
                text: 'A ',
                children: [
                  TextSpan(
                    text: 'Flutter Mobile Developer\n',
                    style: TextStyle(color: Style.primaryColor),
                  ),
                  TextSpan(text: 'Creating Innovative Mobile\nSolutions'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            introText(
              context,
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
            ),
            const SizedBox(height: 40),
            ResponsiveEmail(),
          ],
        ),
      ),
    );
  }
}

class IntroImage extends StatelessWidget {
  const IntroImage({super.key, required this.image, required this.sizeImage});
  final String image;
  final double sizeImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: BoxBorder.all(
          color: Style.primaryColor.withAlpha((255 * 0.8).toInt()),
          width: 3,
        ),
      ),
      child: CircleAvatar(
        foregroundImage: AssetImage(ImagePath.mySelf),
        radius: sizeImage,
      ),
    );
  }
}

Widget introText(BuildContext context, {required String text}) {
  final fontWidth = MediaQuery.of(context).size.width;
  final bool isWide = fontWidth >= AppSize.tabletSize;
  return SizedBox(
    width: isWide ? 700 : 370,
    child: Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: Style.secondaryColor,
        fontSize: isWide ? 16.spMin : 12,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
