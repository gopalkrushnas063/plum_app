import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plum_app/controllers/home_controller.dart';
import 'package:plum_app/widgets/carousel_slider.dart';
import 'package:plum_app/widgets/shop_category.dart';
import 'package:plum_app/widgets/smooth_indicator.dart';
import 'package:plum_app/widgets/rounded_image.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  final List<String> imagePaths = [
    "assets/images/body_mist.png",
    "assets/images/Just_in.png",
    "assets/images/night_routine.png",
    "assets/images/offers.png",
    "assets/images/Sale_Icon 1.png",
  ];

  final List<String> imageAssets = [
    "assets/images/carousel_img.png",
    "assets/images/carousel_img.png",
    "assets/images/carousel_img.png",
    "assets/images/carousel_img.png",
    "assets/images/carousel_img.png",
  ];

  final List<String> serviceNames = [
    "Body Mist",
    "Just In",
    "Night Routine",
    "Offers",
    "Sale",
  ];

  final List<String> catImageAssets = [
    "assets/images/bodycare.png",
    "assets/images/gifting.png",
    "assets/images/fragrance.png",
    "assets/images/haircare.png",
    "assets/images/makeup.png",
    "assets/images/fragrance.png",
    "assets/images/haircare.png",
    "assets/images/makeup.png",
  ];

  final List<String> catNames = [
    "Bodycare",
    "Fragrance",
    "Gifting",
    "Haircare",
    "Makeup",
     "Gifting",
    "Haircare",
    "Makeup",
  ];

  final List<Color> catColors = [
    const Color(0xFFE5EDCE),
    const Color(0xFFD7F0F0),
    const Color(0xFFE3CAEF),
    const Color(0xFFD9B8AA),
    const Color(0xFFCEEDE2),
    const Color(0xFFC7D2F9),
    const Color(0xFFFFBAE8),
    const Color(0xFFF1E5B3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 55,
                      height: 24,
                    ),
                    const VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Image.asset(
                      "assets/images/buff.png",
                      width: 48,
                      height: 22,
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.favorite_outline),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 16.0),
                child: Text(
                  "hi plumster!",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 19.0,
                    color: Color(0xFF5D0D8B),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.15,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: RoundedImage(
                        imagePath: imagePaths[index],
                        serviceName: serviceNames[index],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              buildCarouselSlider(context),
              const SizedBox(height: 20),
              buildSmoothIndicator(),
              Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.15,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ShopCategory(
                        imagePath: catImageAssets[index],
                        serviceName: catNames[index],
                        backgroundColor: catColors[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCarouselSlider(BuildContext context) {
    return CarouselSliderWidget(
      imageAssets: imageAssets,
      onPageChanged: (index, reason) {
        _controller.onPageChanged(index);
      },
    );
  }

  Widget buildSmoothIndicator() {
    return SmoothIndicator(
      count: imageAssets.length,
      currentIndex: _controller.currentIndex,
    );
  }
}
