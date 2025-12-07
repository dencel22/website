import 'package:website/export.dart';

class AboutMySelf extends StatelessWidget {
  const AboutMySelf({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withAlpha((255 * 0.2).toInt()),
      height: 800,
      child: Center(child: isWide(context)),
    );
  }
}

Widget isWide(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size;
  final bool isWide = screenWidth.width > AppSize.tabletSize;
  if (isWide) {
    return Row(
      crossAxisAlignment: .start,
      mainAxisAlignment: .center,
      children: [AboutMe(), const SizedBox(width: 16), MySelfImage()],
    );
  } else {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: .min,
      children: [AboutMe(), const SizedBox(height: 20), MySelfImage()],
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool size = screenWidth > AppSize.tabletSize;
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          fontWeight: .bold,
          fontSize: size ? 32.spMin : 18.sp,
        ),
        text:
            'A Deep Dive into My\nlife Experience In Mobile\nDeveloper and Lessons\nLearned',
      ),
    );
  }
}

class MySelfImage extends StatelessWidget {
  const MySelfImage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double screenSize(double width) {
      if (screenWidth >= AppSize.tabletSize) {
        return screenWidth * 0.3;
      } else {
        return screenWidth * 0.7;
      }
    }

    return Column(
      mainAxisAlignment: .center,
      mainAxisSize: .min,
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            ImagePath.mySelf,
            fit: BoxFit.cover,
            height: screenSize(screenWidth),
            width: screenSize(screenWidth),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: screenSize(screenWidth),
          child: Text(
            'Hi, I\'m Dencel a Mobile Developer who enjoys turning simple ideas into practical digital tools. My journey in Tech began with curiosity and the excitement of creating something useful from scrathc. That passion creating something useful from scratch. That passion lead me to build Veentap, an app designed to help users create and manage events more easily.',
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
