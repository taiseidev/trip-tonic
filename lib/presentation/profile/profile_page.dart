import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trip_tonic/presentation/profile/widgets/user_profile_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Gap(40),
          UserProfileSection(),
          Gap(40),
        ],
      ),
    );
  }
}
