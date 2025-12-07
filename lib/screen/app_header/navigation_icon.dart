import 'package:website/export.dart';

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const .symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          border: BoxBorder.all(color: Style.primaryColor, width: 0.8),
          borderRadius: .circular(18),
        ),
        child: Row(
          mainAxisAlignment: .center,
          children: [
            Text(
              text,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: Style.secondaryColor),
            ),
            const SizedBox(width: 6),
            Icon(Icons.arrow_outward, size: 14, color: Style.primaryColor),
          ],
        ),
      ),
    );
  }
}

class AppIconLogo extends StatelessWidget {
  const AppIconLogo({super.key, required this.iconImage});
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 8),
      child: Image.asset(
        iconImage,
        height: 24,
        width: 24,
        color: Style.secondaryColor,
      ),
    );
  }
}
