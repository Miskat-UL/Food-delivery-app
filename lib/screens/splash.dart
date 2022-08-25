import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui_food_delivery/variables/variablels.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/b_image2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/b2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                  width: MediaQuery.of(context).size.height * 0.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/23.png',
                          height: 50,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: const [
                              Text(
                                textAlign: TextAlign.center,
                                'Feeling Hungry ?',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                'Let’s order right now',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            'Order Anything From Anywhere. Fastest Delivery service in town.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: buttonBackgroundColorDeep,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Get Started 😋',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
