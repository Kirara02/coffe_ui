import 'package:flutter/material.dart';

class SpecialCoffeeCard extends StatelessWidget {
  SpecialCoffeeCard({Key? key}) : super(key: key);

  final List<String> images = [
    "assets/kaffebase-coffeeshop-uAx74-kc5Kw-unsplash.jpg",
    "assets/coffee.jpg",
    "assets/lattee.jpg",
  ];

  final List<String> coffeeName = [
    "Caramel Macchiato",
    "Turkish Coffee",
    "Cafe Cubanoi Special",
  ];

  final List<String> ingredients = [
    "Ice, Caramel Sauce, Espresso",
    "Turkish Coffee, Sugar",
    "Ground Coffee, Water"
  ];

  final List<String> price = [
    "4.50",
    "7.50",
    "9.00",
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xff141921),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffeeName[index],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        ingredients[index],
                        style: const TextStyle(
                          color: Color(0xff919293),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                r'$ ',
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
                          const SizedBox(
                            width: 70,
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
                              size: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        );
      },
    );
  }
}
