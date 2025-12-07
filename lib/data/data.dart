import 'package:website/export.dart';

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
