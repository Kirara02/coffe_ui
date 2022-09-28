import 'package:coffe_ui/screens/coffee_detail_screen.dart';
import 'package:flutter/material.dart';

class CoffeeCards extends StatelessWidget {
  final List<String> images = [
    "assets/tyler-nix-nwdtkFzDfPY-unsplash.jpg",
    "assets/newcappuccino.jpg",
    "assets/newcoffee.jpg",
    "assets/nicholas-grande-Hd36cpebWbQ-unsplash.jpg",
  ];

  final List<String> ingredients = [
    "With Oat Milk",
    "With Cinnamon Powder",
    "With Chocolate Powder",
    "With Caramel Drizzle"
  ];

  final List<String> price = [
    "4.00",
    "5.00",
    "9.50",
    "7.60",
  ];

  CoffeeCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CoffeeDetailScreen(),
            ),
          );
        },
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  height: 250,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xff242931),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 135,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Cappucino",
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              ingredients[index],
                              style: const TextStyle(
                                color: Color(0xff919293),
                                fontSize: 11,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      r'$',
                                      style: TextStyle(
                                        color: Color(0xffd17842),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      price[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffd17842),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
