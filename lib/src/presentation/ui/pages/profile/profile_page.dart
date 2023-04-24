import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/ui/pages/profile/widgets/user_profile_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const pageName = 'profile';
  static const pagePath = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: UserProfileSection(),
          ),
        ],
      ),
    );
  }
}
