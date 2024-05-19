import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name;
  final String code;
  final String amount;
  final IconData icon;
  final bool isInversed;

  final _deepGreyColor = const Color.fromARGB(255, 40, 40, 40);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInversed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInversed ? Colors.white : _deepGreyColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: isInversed ? _deepGreyColor : Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                      color: isInversed ? _deepGreyColor : Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    code,
                    style: TextStyle(
                      color: isInversed ? _deepGreyColor : Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
          Transform.scale(
            scale: 2,
            child: Transform.translate(
              offset: const Offset(5, 12),
              child: Icon(
                icon,
                color: isInversed ? _deepGreyColor : Colors.white,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
