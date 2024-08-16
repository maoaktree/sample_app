import 'package:flutter/material.dart';
import 'package:sample_app/homePage/home_page.dart';
import 'package:sample_app/util/theme.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      } else {
        _showPopup(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    const primaryColor = Color.fromRGBO(6, 68, 99, 1);
    const secondaryColor = Colors.grey;
    const accentColor = Color.fromRGBO(83, 227, 158, 1);
    const backgroundColor = Colors.white;

    const shadowColor = Colors.grey;
    double elevation = 100;

    return SafeArea(
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, height),
              painter: BottomNavCurvePainter(
                backgroundColor: backgroundColor,
                shadowColor: shadowColor,
                elevation: elevation,
              ),
            ),

            // CENTER BUTTON
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                backgroundColor: primaryColor,
                elevation: 0.1,
                shape: const CircleBorder(),
                onPressed: () => _onItemTapped(2),
                child: const Icon(
                  Icons.shopping_basket,
                  color: accentColor,
                ),
              ),
            ),

            SizedBox(
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: NavBarIcon(
                      text: "Home",
                      icon: Icons.home_outlined,
                      selected: _selectedIndex == 0,
                      onPressed: () => _onItemTapped(0),
                      defaultColor: secondaryColor,
                      selectedColor: primaryColor,
                    ),
                  ),
                  Expanded(
                    child: NavBarIcon(
                      text: "Delas",
                      icon: Icons.star_outlined,
                      selected: _selectedIndex == 1,
                      onPressed: () => _onItemTapped(1),
                      defaultColor: secondaryColor,
                      selectedColor: primaryColor,
                    ),
                  ),
                  const SizedBox(width: 56),
                  Expanded(
                    child: NavBarIcon(
                      text: "Cart",
                      icon: Icons.local_grocery_store_outlined,
                      selected: _selectedIndex == 3,
                      onPressed: () => _onItemTapped(3),
                      defaultColor: secondaryColor,
                      selectedColor: primaryColor,
                    ),
                  ),
                  Expanded(
                    child: NavBarIcon(
                      text: "Account",
                      icon: Icons.account_circle_outlined,
                      selected: _selectedIndex == 4,
                      onPressed: () => _onItemTapped(4),
                      defaultColor: secondaryColor,
                      selectedColor: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Don't be sad",
            style: AppTextStyles.headerTitle,
          ),
          content: Text(
            'available soon',
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
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    Key? key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
    this.selectedColor = const Color(0xffFF8527),
    this.defaultColor = Colors.black54,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
        Text(
          text,
          style: AppTextStyles.headerSubtitle.copyWith(
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter({
    this.backgroundColor = Colors.white,
    this.insetRadius = 38,
    this.shadowColor = Colors.grey,
    this.elevation = 100,
  });

  final Color backgroundColor;
  final Color shadowColor;
  final double elevation;
  final double insetRadius;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path();

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;

    path.lineTo(insetCurveBeginnningX, 0);
    path.arcToPoint(Offset(insetCurveEndX, 0),
        radius: const Radius.circular(41), clockwise: true);

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height + 56);
    path.lineTo(0, size.height + 56);

    canvas.drawShadow(path, shadowColor, elevation, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
