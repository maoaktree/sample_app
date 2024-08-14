import 'package:flutter/material.dart';
import 'package:sample_app/util/theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivery",
              style: AppTextStyles.headerTitle,
            ),
            GestureDetector(
              onTap: () {
                _showNeighborhoodMenu(context);
              },
              child: Row(
                children: [
                  Text(
                    'George Town',
                    style: AppTextStyles.headerSubtitle,
                  ),
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 16,
                    color: AppColors.darkGray,
                  ),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          icon: Image.asset(
            'lib/images/user.png',
            height: 42,
            width: 42,
          ),
          onPressed: () {
            _showUserPopup(context);
          },
        ),
      ],
    );
  }

  void _showNeighborhoodMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: const Text('West Bay'),
              onTap: () {
                Navigator.pop(context, 'West Bay');
              },
            ),
            ListTile(
              title: const Text('Grand Harbour'),
              onTap: () {
                Navigator.pop(context, 'Grand Harbour');
              },
            ),
            ListTile(
              title: const Text('Bodden Town'),
              onTap: () {
                Navigator.pop(context, 'Bodden Town');
              },
            ),
          ],
        );
      },
    );
  }
}

void _showUserPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Dev Info',
          style: AppTextStyles.headerTitle,
        ),
        content: Text(
          'Hi, this is Mari!\n\n'
          'My journey with Flutter began as a passion that quickly turned into a career. From my early steps in mobile app development, I fell in love with the flexibility and power of Flutter. It all started with a personal project to enhance communication in my yoga school, which led me to dive headfirst into this field. Since then, I’ve worked on various projects, always striving to create amazing and functional interfaces.\n\n'
          'Participating in the Bento Challenge is an exciting opportunity for me to showcase what I’ve learned and continue growing as a Flutter developer. I’m thrilled to share my skills and see how far I can go with this challenge!\n\n'
          'Thank you for the opportunity, and let’s get started!',
          style: AppTextStyles.detailText,
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Close',
              style: TextStyle(color: AppColors.navyBlue),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
