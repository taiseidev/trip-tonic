import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/pages/profile/widgets/user_profile_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const pageName = 'profile';
  static const pagePath = '/profile';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: UserProfileSection(),
          ),
        ],
      ),
    );
  }
}
