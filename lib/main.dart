import 'package:engagement_portal/features/login/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EngagementPortal());
}

class EngagementPortal extends StatelessWidget {
  const EngagementPortal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      theme: ThemeData(primarySwatch: Colors.blue),
       home: const LoginScreen(),
    );
  }
}
