import 'package:website/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 568),
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Dev Dens',
          debugShowCheckedModeBanner: false,
          theme: ThemeWebsite.websiteTheme,
          home: child,
        );
      },
      child: const HomeScreen(),
    );
  }
}
