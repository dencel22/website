import 'package:website/export.dart';
import 'package:website/screen/footer/footer.dart';
import 'package:website/screen/questions/questions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppHeader(),
              const IntroHeader(),
              const AboutMySelf(),
              const MySkills(),
              const Questions(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget landingPageBuilder(BuildContext context) {
//   final mediaQuery = MediaQuery.of(context);

//   return SizedBox(
//     height: mediaQuery.size.height * 0.9,
//     child: Center(
//       child: Column(
//         mainAxisSize: .min,
//         children: [
//           RichText(
//             textAlign: .center,
//             text: TextSpan(
//               style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                 color: Style.white,
//                 fontWeight: .bold,
//               ),
//               text: 'I\'m Dencel ',
//               children: [
//                 TextSpan(
//                   style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                     color: Style.primaryColor,
//                     fontWeight: .bold,
//                   ),
//                   text: 'A Flutter Developer',
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 24),
//           Text(
//             'Passionate About Building Seamless Mobile Experiences',
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           const SizedBox(height: 32),
//           Row(
//             mainAxisAlignment: .center,
//             children: [
//               ElevatedButton.icon(
//                 onPressed: () {},
//                 label: Text('Get in Touch'),
//                 icon: Icon(Icons.arrow_outward_outlined),
//               ),
//               const SizedBox(width: 24),
//               ElevatedButton.icon(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Style.secondaryColor,
//                   backgroundColor: Style.tertiaryColor,
//                 ),
//                 onPressed: () {},
//                 label: Text('View Work'),
//                 icon: Icon(Icons.arrow_outward_outlined),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget aboutMySelfBuilder(
//   BuildContext context,
//   List<Map<String, String>> listOfQuestions,
// ) {
//   final mediaQuery = MediaQuery.of(context);
//   return Container(
//     color: Color(0xFFFFFFFF),
//     height: mediaQuery.size.height * 1,
//     width: double.infinity,
//     child: Column(
//       children: [
//         SizedBox(height: mediaQuery.size.height * 0.1),
//         Row(
//           mainAxisAlignment: .center,
//           crossAxisAlignment: .start,
//           children: [
//             Text(
//               'A Deep Dive into My\nlife Experience In Mobile\nDeveloper and Lessons\nLearned',
//               style: Theme.of(context).textTheme.headlineLarge!.copyWith(
//                 color: Style.secondaryColor,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(width: 40),
//             Column(
//               crossAxisAlignment: .start,
//               children: [
//                 Card(
//                   color: Colors.white,
//                   clipBehavior: Clip.hardEdge,
//                   shape: RoundedRectangleBorder(borderRadius: .circular(12)),
//                   child: Image.asset(
//                     'assets/images/self1.jpeg',
//                     height: mediaQuery.size.height * 0.5,
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 SizedBox(
//                   width: mediaQuery.size.width * 0.3,
//                   child: Text(
//                     '''Hi, I'm Dencel a Mobile Developer who enjoys turning simple ideas into practical digital tools. My journey in tech began with curiosity and the excitement of creating something useful from scratch. That passion led me to build Veentap, an app designed to help users create and manage events more easily.
//                     \nWorking on Veentap taught me how to combine clean design, clear functionality, and real-world usability. It pushed me to explore better ways of solving problems and delivering a smooth user experience. ''',
//                     textAlign: .start,
//                     style: Theme.of(context).textTheme.labelSmall!.copyWith(
//                       color: Style.secondaryColor,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }









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