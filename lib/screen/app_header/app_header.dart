import 'package:website/export.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool iswide = screenWidth > AppSize.tabletSize;
    return Container(
      color: Style.white,
      child: iswide ? const DesktopNavigation() : MobileAppHeader(),
    );
  }
}

class DesktopNavigation extends StatelessWidget {
  const DesktopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenUtil().screenWidth;
    final horizontPadding = screenWidth > AppSize.desktopSize;
    return Material(
      color: Style.white,
      child: SizedBox(
        height: 64,
        child: Row(
          children: [
            SizedBox(width: horizontPadding ? 45 : 28),
            Row(children: [const AppIconLogo(iconImage: ImagePath.logo)]),
            Spacer(),
            const NavigationLink(text: 'Home'),
            const NavigationLink(text: 'My Work'),
            const NavigationLink(text: 'Testimonials'),
            const NavigationLink(text: 'Blog'),
            const NavigationLink(text: 'Contact'),
            Spacer(),
            const NavigationIcon(text: 'Hire Me'),
            SizedBox(width: horizontPadding ? 45 : 28),
          ],
        ),
      ),
    );
  }
}

class MobileAppHeader extends StatelessWidget {
  const MobileAppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool horizontalPadding = screenWidth >= AppSize.mobileSize;
    return Material(
      color: Style.white,
      child: SizedBox(
        height: 64,
        child: Row(
          children: [
            SizedBox(width: horizontalPadding ? 24 : 16),
            Row(
              children: [
                AppIconLogo(iconImage: ImagePath.dart),
                AppIconLogo(iconImage: ImagePath.flutter),
                AppIconLogo(iconImage: ImagePath.github),
              ],
            ),
            Spacer(),
            MobileAppToggleIconButton(icon: Icons.light_mode),
            MobileAppToggleIconButton(icon: Icons.menu),
            SizedBox(width: horizontalPadding ? 24 : 16),
          ],
        ),
      ),
    );
  }
}
