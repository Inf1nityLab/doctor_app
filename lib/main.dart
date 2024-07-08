import 'package:doctor_app/feature/auth/presentation/screens/login_screen.dart';
import 'package:doctor_app/feature/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: GoogleFonts.rubik().fontFamily,
          scaffoldBackgroundColor: Colors.white),
      darkTheme: ThemeData.dark(),
      home: const LoginScreen(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              children: const [
                Cont(color: Colors.black),
                Cont(color: Colors.red),
                Cont(
                  color: Colors.green,
                  height: 200,
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              },
              child: const Text('Continue'))
        ],
      ),
    );
  }
}

class Cont extends StatelessWidget {
  final Color color;
  final double height;

  const Cont({super.key, required this.color, this.height = 100});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: color,
        height: height,
        width: 100,
      ),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// TODO: String, int, double, bool

String name = 'Baias';
String milk = '';
int age = 24;
double weight = 65.87;
bool isMarried = false;
bool isLike = true;

String jsdf = 'Nurbol';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),
          Text(name),
          Text(name),
          Text(name),
          Text(name),
          Text(name),
          Text(jsdf),
          IconButton(
              onPressed: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              icon: isLike
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite_border))
        ],
      ),
    );
  }
}
