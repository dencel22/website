import 'dart:math';

import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:website/models/skills.dart';
import 'package:website/widget/service_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChanged = false;
  final List<Map<String, String>> questions = [
    {
      '1. What services do you offer?':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      '2. How can I get started on a project?':
          'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      '3. What is your design process?':
          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.',
      '4. What are your pricing plans?':
          'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.',
      '5. What do you ensure the quality of your designs':
          'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.',
    },
  ];

  final List<Skills> mySkills = [
    Skills(
      images: 'assets/images/flutter.png',
      title: 'Flutter',
      subtitle:
          'I develop cross-platform mobile apps using Flutter, creating smooth interfaces and consistent experiences on both Android and iOS. I can create responsive, visually appealing, high-performance apps.',
    ),
    Skills(
      images: 'assets/images/dart.png',
      title: 'Dart',
      subtitle:
          'I use Dart to build fast, reliable, and scalable mobile app features with clean code and efficient logic. I can write clean, efficient, and maintainable code, enabling the development of robust applications.',
    ),
    Skills(
      images: 'assets/images/git.png',
      title: 'Git',
      subtitle:
          'I manage project versions with Git, ensuring clean workflows, organized commits, and easy collaboration or code tracking. I can efficiently manage project versions, resolve conflicts, and maintain a clean codebase',
    ),
    Skills(
      images: 'assets/images/github.png',
      title: 'GitHub',
      subtitle:
          'I use GitHub to host, manage, and collaborate on projects, ensuring secure code storage, seamless team work, and professional project documentation manage pull requests, and ensure smooth project integration and version.',
    ),
    Skills(
      images: 'assets/images/ui_design.png',
      title: 'UI Design',
      subtitle:
          'I design clean, intuitive user interfaces focused on usability, visual balance, and a smooth user experience. With UI design skills, I can create attractive layouts, thoughtful interactions, and user-centered designs that align with project.',
    ),
  ];

  List<Map<String, List<String>>> feutures = [
    {
      'Feuturess': [
        'Feutures',
        'Payment Link',
        'Recurring Billing',
        'Invoice Management',
        'Checkout',
        'Integrations',
        'Pricing',
      ],
      'Solutionss': [
        'Solutions',
        'eCommerce',
        'Finance Automation',
        'Crypto',
        'Global Business',
        'Market Places',
      ],
      'Resourcess': [
        'Resources',
        'Tutorials',
        'Blog',
        'Community',
        'Privacy Policy',
      ],
      'About': ['About', 'Company', 'Careers', 'FAQ', 'Contact Us'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.abc_rounded),
        title: Row(
          mainAxisAlignment: .center,
          children: [
            TextButton(onPressed: () {}, child: Text('Home')),
            TextButton.icon(
              iconAlignment: IconAlignment.end,
              onPressed: () {},
              label: Text('About Us'),
              icon: Icon(Icons.arrow_drop_down),
            ),
            TextButton.icon(
              iconAlignment: IconAlignment.end,
              onPressed: () {},
              label: Text('Portfolio'),
              icon: Icon(Icons.arrow_drop_down),
            ),
            TextButton(onPressed: () {}, child: Text('Pricing')),
            TextButton(onPressed: () {}, child: Text('Blog\'s')),
          ],
        ),
        actions: [
          OutlinedButton.icon(
            onPressed: () {},
            label: Text('Get in Touch'),
            icon: Icon(Icons.arrow_outward_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          landingPageBuilder(context),
          aboutMySelfBuilder(context, questions),
          skillsBuilder(context, mySkills),
          questionsBuilder(context, questions),
          footerBuilder(context, feutures),
        ],
      ),
    );
  }
}

Widget landingPageBuilder(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);

  return SizedBox(
    height: mediaQuery.size.height * 0.9,
    child: Center(
      child: Column(
        mainAxisSize: .min,
        children: [
          RichText(
            textAlign: .center,
            text: TextSpan(
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: Style.white,
                fontWeight: .bold,
              ),
              text: 'I\'m Dencel ',
              children: [
                TextSpan(
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Style.primaryColor,
                    fontWeight: .bold,
                  ),
                  text: 'A Flutter Developer',
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Passionate About Building Seamless Mobile Experiences',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: .center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                label: Text('Get in Touch'),
                icon: Icon(Icons.arrow_outward_outlined),
              ),
              const SizedBox(width: 24),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Style.secondaryColor,
                  backgroundColor: Style.tertiaryColor,
                ),
                onPressed: () {},
                label: Text('View Work'),
                icon: Icon(Icons.arrow_outward_outlined),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget aboutMySelfBuilder(
  BuildContext context,
  List<Map<String, String>> listOfQuestions,
) {
  final mediaQuery = MediaQuery.of(context);
  return Container(
    color: Color(0xFFFFFFFF),
    height: mediaQuery.size.height * 1,
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(height: mediaQuery.size.height * 0.1),
        Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .start,
          children: [
            Text(
              'A Deep Dive into My\nlife Experience In Mobile\nDeveloper and Lessons\nLearned',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Style.secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 40),
            Column(
              crossAxisAlignment: .start,
              children: [
                Card(
                  color: Colors.white,
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(borderRadius: .circular(12)),
                  child: Image.asset(
                    'assets/images/self1.jpeg',
                    height: mediaQuery.size.height * 0.5,
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: mediaQuery.size.width * 0.3,
                  child: Text(
                    '''Hi, I'm Dencel a Mobile Developer who enjoys turning simple ideas into practical digital tools. My journey in tech began with curiosity and the excitement of creating something useful from scratch. That passion led me to build Veentap, an app designed to help users create and manage events more easily.
                    \nWorking on Veentap taught me how to combine clean design, clear functionality, and real-world usability. It pushed me to explore better ways of solving problems and delivering a smooth user experience. ''',
                    textAlign: .start,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Style.secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget skillsBuilder(BuildContext context, List<Skills> skill) {
  return GridView.builder(
    shrinkWrap: true,
    itemCount: skill.length,
    physics: NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: 3 / 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
    ),
    itemBuilder: (context, index) {
      return ServiceCard(skills: skill[index]);
    },
  );
}

Widget questionsBuilder(
  BuildContext context,
  List<Map<String, String>> questions,
) {
  return Container(
    color: Style.white,
    height: MediaQuery.of(context).size.height * 1,
    width: double.infinity,
    child: Column(
      children: [
        const SizedBox(height: 24),
        Text(
          'Frequently Asked\nQuestions',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Style.secondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'Here\'s what some of our customers say about our\nplatform. Here\'s what some of our customers say about\nour platform.',
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(color: Style.secondaryColor),
        ),
        const SizedBox(height: 24),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final query = MediaQuery.of(context);
              return Column(
                children: [
                  for (var item in questions)
                    for (var data in item.entries)
                      Container(
                        margin: .symmetric(
                          horizontal: query.size.width * 0.2,
                          vertical: query.size.height * 0.01,
                        ),
                        child: ExpansionTile(
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: Text(
                            data.key,
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(color: Style.secondaryColor),
                          ),
                          expandedAlignment: Alignment.topLeft,
                          splashColor: Colors.transparent,
                          showTrailingIcon: true,
                          maintainState: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 30,
                              ),
                              child: Text(
                                data.value,
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(color: Style.secondaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                ],
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget footerBuilder(
  BuildContext context,
  List<Map<String, List<String>>> data,
) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.5,
    padding: .symmetric(
      horizontal: MediaQuery.of(context).size.width * 0.1,
      vertical: MediaQuery.of(context).size.height * 0.05,
    ),
    width: double.infinity,
    color: Color(0xFF0E2028),
    child: Column(
      mainAxisAlignment: .center,
      children: [
        Row(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Let\'s Stay Connected',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(120, 38),
                textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              child: Text('Get in Touch'),
            ),
            const SizedBox(width: 14),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Style.tertiaryColor,
                fixedSize: Size(120, 38),
                textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              child: Text('View Work'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Divider(
          thickness: 0.9,
          color: Colors.grey.withAlpha((255 * 0.3).toInt()),
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: .start,
          mainAxisAlignment: .spaceAround,
          children: [
            for (var value in data)
              for (var feuture in value.entries)
                Column(
                  children: feuture.value
                      .map(
                        (v) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(onTap: () {}, child: Text(v)),
                        ),
                      )
                      .toList(),
                ),
          ],
        ),
      ],
    ),
  );
}



//  const SizedBox(height: 24),
//         Text(
//           'Frequently Asked\nQuestions',
//           textAlign: TextAlign.center,
//           style: Theme.of(context).textTheme.headlineLarge!.copyWith(
//             color: Style.secondaryColor,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 24),
//         Text(
//           'Here\'s what some of our customers say about our\nplatform. Here\'s what some of our customers say about\nour platform.',
//           textAlign: TextAlign.center,
//           style: Theme.of(
//             context,
//           ).textTheme.bodyMedium!.copyWith(color: Style.secondaryColor),
//         ),
//         const SizedBox(height: 24),
//         Expanded(
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: listOfQuestions.length,
//             itemBuilder: (context, index) {
//               final query = MediaQuery.of(context);
//               return Column(
//                 children: [
//                   for (var item in listOfQuestions)
//                     for (var entries in item.entries)
//                       Container(
//                         margin: .symmetric(
//                           horizontal: query.size.width * 0.2,
//                           vertical: query.size.height * 0.01,
//                         ),
//                         child: ExpansionTile(
//                           controlAffinity: ListTileControlAffinity.trailing,
//                           title: Text(entries.key),
//                           expandedAlignment: Alignment.topLeft,
//                           splashColor: Colors.transparent,
//                           controller: ExpansibleController(),
//                           showTrailingIcon: true,
//                           maintainState: true,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 vertical: 12,
//                                 horizontal: 30,
//                               ),
//                               child: Text(
//                                 entries.value,
//                                 style: TextStyle(color: Style.secondaryColor),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                 ],
//               );
//             },
//           ),
//         ),