import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeDetailScreen extends StatelessWidget {
  const CoffeeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage(
                            "assets/tyler-nix-nwdtkFzDfPY-unsplash.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.38,
                    child: BlurryContainer(
                      blur: 4,
                      color: const Color(0xff141921).withOpacity(0.2),
                      padding: const EdgeInsets.all(20),
                      height: 140,
                      width: MediaQuery.of(context).size.width * 0.96,
                      borderRadius: BorderRadius.circular(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Cappucino",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "With Oat Milk",
                                style: TextStyle(
                                  color: Color(0xff919293),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/star.svg',
                                    height: 20,
                                    color: const Color(0xffd17842),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "(5.437)",
                                    style: TextStyle(
                                      color: Color(0xff919293),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff101419),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/coffee-beans.svg',
                                          height: 15,
                                          color: const Color(0xffd17842),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          "Coffee",
                                          style: TextStyle(
                                              color: Color(0xff919293),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff101419),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/water-drop.svg',
                                          height: 15,
                                          color: const Color(0xffd17842),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          "Milk",
                                          style: TextStyle(
                                              color: Color(0xff919293),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 37,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  color: const Color(0xff101419),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Medium Roasted",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff919293),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff919293),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "A cappuccino is a coffee-based drink made primarily from espresso and milk.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff919293),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Size",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff919293),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 37,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xffd17842),
                              width: 1,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "S",
                              style: TextStyle(
                                  color: Color(0xff919293), fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          decoration: BoxDecoration(
                            color: const Color(0xff101419),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "M",
                              style: TextStyle(
                                  color: Color(0xff919296), fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          decoration: BoxDecoration(
                            color: const Color(0xff101419),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "L",
                              style: TextStyle(
                                  color: Color(0xff919296), fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Price",
                                  style: TextStyle(
                                    color: Color(0xff919296),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      r'$ ',
                                      style: TextStyle(
                                        color: Color(0xffd17842),
                                        fontSize: 21,
                                      ),
                                    ),
                                    Text(
                                      '4.29',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        ButtonTheme(
                          minWidth: MediaQuery.of(context).size.width * 0.5,
                          height: 50,
                          child: RaisedButton(
                            color: const Color(0xffd17842),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
