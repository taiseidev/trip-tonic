import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trip_tonic/src/presentation/ui/pages/profile/widgets/user_profile_section.dart';

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
          // RotatingImage(),
        ],
      ),
    );
  }
}

class RotatingImage extends StatefulWidget {
  const RotatingImage({super.key});

  @override
  _RotatingImageState createState() => _RotatingImageState();
}

class _RotatingImageState extends State<RotatingImage> {
  double _rotationAngle = 0;

  bool _handleScrollNotification(ScrollUpdateNotification notification) {
    setState(() {
      _rotationAngle += notification.scrollDelta! / 100;
    });
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: _handleScrollNotification,
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Transform(
              transform: Matrix4.identity()..rotateY(_rotationAngle),
              alignment: Alignment.center,
              child: Image.network(
                'https://images.unsplash.com/photo-1603787081207-362bcef7c144?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
                width: 300,
                height: 300,
              ),
            ),
          );
        },
      ),
    );
  }
}
