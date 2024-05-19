import 'package:flutter/material.dart';

import 'button.dart';
import 'currency_card.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).padding.bottom,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Hey, Selena!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Welcome back!",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Total Balance",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const Text(
                    "\$5,194,482",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Button(
                          text: "Transfer",
                          backgroundColor: Colors.amber,
                          textColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Button(
                          text: "Request",
                          backgroundColor: Colors.blueGrey,
                          textColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Wallets",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '7,423',
                    icon: Icons.euro_rounded,
                    isInversed: true,
                  ),
                  Transform.translate(
                    offset: const Offset(0, -40),
                    child: const CurrencyCard(
                      name: 'Bitcoin',
                      code: 'BTC',
                      amount: '7,423',
                      icon: Icons.currency_bitcoin,
                      isInversed: false,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -40),
                    child: const CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '7,434,433',
                      icon: Icons.attach_money_rounded,
                      isInversed: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
