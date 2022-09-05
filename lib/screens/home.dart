import 'package:flutter/material.dart';
import 'package:flutter_ui_food_delivery/variables/variablels.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double contHeight = 200;
    // int cont = 1;
    return Scaffold(
      // backgroundColor: buttonBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Container(
                height: contHeight,
                decoration: const BoxDecoration(
                  color: Color(0XFFFFE8E8),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: IconButton(
                                alignment: Alignment.center,
                                icon: const Icon(
                                  size: 30,
                                  Icons.menu,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Search',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.notifications_none,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: contHeight / 2,
                      // left: MediaQuery.of(context).size.width / 2,
                      left: 0,
                      right: 0,
                      child: const Text(
                        "What do you want to eat?😋 ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned(
                      top: contHeight / 2 + 72,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(33),
                              borderSide: const BorderSide(
                                color: backgroundColor,
                                width: 2,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: const Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            hintText: 'Search',
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Category',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            'See all',
                            style:
                                TextStyle(fontSize: 14, color: backgroundColor),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: backgroundColor,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const FoodItems(),
            ]),
            const SizedBox(height: 20),
            Container(
              height: 100,
              color: Colors.amber,
              child: Row(
                children: const [
                  Text('data'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FoodItems extends StatefulWidget {
  const FoodItems({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodItems> createState() => _FoodItemsState();
}

class _FoodItemsState extends State<FoodItems> {
  @override
  Widget build(BuildContext context) {
    int cont = 0;
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  cont = index;

                  // print(cont);
                  // print(index);
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: index == cont ? Colors.blue : Colors.amber,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Burger 🍔',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
