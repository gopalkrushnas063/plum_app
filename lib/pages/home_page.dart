import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      "assets/images/body_mist.png",
      "assets/images/Just_in.png",
      "assets/images/night_routine.png",
      "assets/images/offers.png",
      "assets/images/Sale_Icon 1.png",
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
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
      body: Container(
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
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: _buildRoundedImage(imagePaths[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildRoundedImage(String imagePath) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(70),
      border: Border.all(color: Color.fromARGB(255, 209, 125, 194),width: 2.5),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    ),
  );
}
