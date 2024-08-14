import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_app/util/button.dart';
import 'package:sample_app/util/theme.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({super.key});

  @override
  State<PromoBanner> createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: [
            _buildBanner(
              backgroundColor: Colors.green.withOpacity(0.3),
              title: 'FRESH AVOCADO \nUP TO 15% OFF',
            ),
            _buildBanner(
              backgroundColor: Colors.orange.withOpacity(0.3),
              title: 'SUMMER SALE: \n20% OFF ALL ITEMS',
            ),
            _buildBanner(
              backgroundColor: Colors.blue.withOpacity(0.3),
              title: 'NEW ARRIVALS: \n10% OFF',
            ),
          ],
        ),
        const SizedBox(height: 10),
        DotsIndicator(
          currentIndex: _currentIndex,
          itemCount: 3,
        ),
      ],
    );
  }

  Widget _buildBanner({required Color backgroundColor, required String title}) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              MyButton(
                text: "Shop Now",
                buttonColor: Colors.white,
                textColor: Colors.black,
                fontSize: 12,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                onTap: () {
                  Navigator.pushNamed(context, '/detailpage');
                },
              ),
            ],
          ),
          SizedBox(
            width: 100,
            child: Image.asset(
              'lib/images/avocado.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class DotsIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const DotsIndicator({
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        itemCount,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
            color: currentIndex == index ? Colors.white : AppColors.lightGreen,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
