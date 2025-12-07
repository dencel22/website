import 'package:website/export.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    bool isWide = size > AppSize.tabletSize;

    int crossAxisSize(double screenWidth) {
      if (screenWidth >= AppSize.desktopSize) {
        return 3;
      } else if (screenWidth >= AppSize.tabletSize) {
        return 2;
      } else {
        return 1;
      }
    }

    return SizedBox(
      height: isWide ? size * 0.7 : size * 3,
      child: Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: mySkills.length,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisSize(size),
            childAspectRatio: 1.7,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            return ServiceCard(skills: mySkills[index]);
          },
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.skills});

  final Skills skills;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 24, horizontal: 24),
      decoration: BoxDecoration(
        color: Style.secondaryColor,
        borderRadius: .circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha((255 * 0.2).toInt()),
            blurRadius: 0.1,
            offset: Offset(0, 1),
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Style.white,
            child: Image.asset(skills.images, height: 18, width: 18),
          ),
          Spacer(),
          Text(
            skills.title,
            textAlign: .start,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: .bold,
              color: Style.white,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            skills.subtitle,
            style: Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(color: Style.white),
          ),
        ],
      ),
    );
  }
}
