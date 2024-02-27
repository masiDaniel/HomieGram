import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        physics: const ScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) => SizedBox(
          height: 206,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/heri.jpeg',
                      width: 165,
                      height: 135,
                      fit: BoxFit.cover,
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Heri Hostels',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      size: 28,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              const Text(
                'Athi River',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
