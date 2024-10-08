import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sample_app/homePage/home_page.dart';
import 'package:sample_app/util/theme.dart';

class DetailPage extends StatelessWidget {
  final List<String> imageUrls = [
    'lib/images/artichoke.png',
    'lib/images/artichoke2.png',
    'lib/images/artichoke3.png',
  ];

  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel com Dots Indicators
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
              ),
              items: imageUrls.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 5),

            // Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Organic Fresh Artichoke",
                          style: AppTextStyles.headerTitle2),
                      const SizedBox(height: 4),
                      Text("Shop: Alisha Mart",
                          style: AppTextStyles.detailText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[700]),
                      const SizedBox(width: 4),
                      const Text("4.5"),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Icons information
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildInfoIcon("Organic", Icons.eco),
                  _buildInfoIcon("Vegan Food", Icons.check_circle_outline),
                  _buildInfoIcon(
                    "Gluten-free",
                    Icons.grain,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Details", style: AppTextStyles.headerTitle),
                  const SizedBox(height: 10),
                  Text(
                      "These organic, vegan, and gluten-free artichokes are a natural delight, perfect for any healthy diet."
                      "Okie dokie, artichoke—let's get cooking!",
                      style: AppTextStyles.detailText),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Navbar price + button

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$8,15",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[700],
                        ),
                      ),
                      const Text(
                        "\$12.00",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement add to cart functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoIcon(String label, IconData iconData) {
    return Column(
      children: [
        Icon(iconData, size: 30, color: const Color.fromARGB(255, 4, 51, 75)),
        const SizedBox(height: 8),
        Text(label, style: AppTextStyles.detailText),
      ],
    );
  }
}
