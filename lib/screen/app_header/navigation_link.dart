import 'package:website/export.dart';

class NavigationLink extends StatelessWidget {
  const NavigationLink({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: Style.secondaryColor),
          ),
        ),
      ),
    );
  }
}

class MobileAppToggleIconButton extends StatelessWidget {
  const MobileAppToggleIconButton({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: () {},
        child: Icon(icon, size: 24, color: Style.secondaryColor),
      ),
    );
  }
}
