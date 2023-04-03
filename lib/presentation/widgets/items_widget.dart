import 'package:flutter/material.dart';

class ItewsWidget extends StatelessWidget {
  const ItewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xff4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '-50%',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "ItemPage");
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/$i.png",
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Product Title',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4C53A5),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Wraite Descirption Of Product',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff4C53A5),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$55%',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4C53A5),
                        ),
                      ),
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: Color(0xff4C53A5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
