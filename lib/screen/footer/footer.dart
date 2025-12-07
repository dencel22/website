import 'package:website/export.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: .symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
        vertical: MediaQuery.of(context).size.height * 0.05,
      ),
      width: double.infinity,
      // color: Color(0xFF0E2028),
      color: Colors.grey.withAlpha((255 * 0.2).toInt()),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          if (screenWidth > AppSize.tabletSize) ...[
            Row(
              crossAxisAlignment: .start,
              children: [
                Text(
                  'Let\'s Stay Connected',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Custombutton(text: 'Get in Touch'),
                const SizedBox(width: 14),
                Custombutton(text: 'View Work', color: Style.secondaryColor),
              ],
            ),
          ] else ...[
            Column(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'Let\'s Stay connected',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 14),
                Custombutton(text: 'Get in Touch'),
                const SizedBox(height: 14),
                Custombutton(text: 'View Work'),
              ],
            ),
          ],

          const SizedBox(height: 12),
          divider(),
          const SizedBox(height: 12),
          if (screenWidth > AppSize.tabletSize) ...[
            Row(
              crossAxisAlignment: .start,
              mainAxisAlignment: .spaceAround,
              children: [
                for (var value in feutures)
                  for (var feuture in value.entries)
                    Column(
                      children: feuture.value
                          .map(
                            (v) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  v,
                                  style: TextStyle(fontSize: 14.spMin),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
              ],
            ),
          ] else ...[
            Row(
              crossAxisAlignment: .start,
              children: [
                for (var value in feutures)
                  for (var feuture in value.entries)
                    Column(
                      children: feuture.value
                          .map(
                            (v) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  v,
                                  style: TextStyle(fontSize: 7.sp),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    this.color = Style.primaryColor,
    required this.text,
  });
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(120, 38),
        textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}

Widget divider() {
  return Divider(
    thickness: 0.9,
    color: Colors.grey.withAlpha((255 * 0.3).toInt()),
  );
}
