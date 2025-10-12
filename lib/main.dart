import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fyp_tutor/View-Model/role_provider.dart';
import 'Views/Screens/splash-screen.dart';
import 'firebase_options.dart';

void main() async{


// ...
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
   ChangeNotifierProvider(create: (_)=>RoleProvier(),
   child: const MyApp(),
   )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
