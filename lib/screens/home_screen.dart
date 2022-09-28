import 'package:coffe_ui/components/coffee_card.dart';
import 'package:coffe_ui/components/special_coffee_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? tabController;
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          shrinkWrap: false,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 620,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xff1b2827),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.menu,
                          color: Color(0xff4d4f52),
                        ),
                      ),
                      Image.asset(
                        'assets/timothy-dykes-yd4ubMUNTG0-unsplash-removebg-preview.png',
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Find the best\nCoffee for you",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xff141921),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Find your coffe....",
                        hintStyle: const TextStyle(
                          color: Color(0xff3c4846),
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TabBar(
                    controller: tabController,
                    isScrollable: true,
                    labelColor: const Color(0xffd17842),
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: const Color(0xff3c4846),
                    tabs: const [
                      Tab(
                        text: "Cappucino",
                      ),
                      Tab(
                        text: "Americano",
                      ),
                      Tab(
                        text: "Espresso",
                      ),
                      Tab(
                        text: "Mocha",
                      ),
                      Tab(
                        text: "Machiato",
                      ),
                      Tab(
                        text: "Doppio",
                      ),
                    ],
                  ),
                  CoffeeCards(),
                  const Text(
                    "Special for you",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SpecialCoffeeCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: const Color(0xffd17842),
        unselectedItemColor: const Color(0xff4d4f52),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
        ],
      ),
    );
  }
}
