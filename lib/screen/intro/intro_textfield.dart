import 'package:website/export.dart';

class ResponsiveEmail extends StatelessWidget {
  const ResponsiveEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isWide = width > AppSize.tabletSize;
    if (isWide) {
      return Row(
        mainAxisAlignment: .center,
        children: [
          IntroTexFormField(),
          const SizedBox(width: 12),
          ElevatedButton(onPressed: () {}, child: Text('Connect')),
        ],
      );
    } else {
      return Column(
        children: [
          IntroTexFormField(),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () {}, child: Text('Connect')),
        ],
      );
    }
  }
}

class IntroTexFormField extends StatelessWidget {
  const IntroTexFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(
              width: 1.r,
              color: Colors.grey.withAlpha((255 * 0.3).toInt()),
            ),
          ),
          hintText: 'Connect Us',
        ),
      ),
    );
  }
}
