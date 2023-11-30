import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pameran/models/c_pameran.dart';
import 'package:pameran/screens/deskripsi_screen.dart';

class QuickAndFastList extends StatelessWidget {
  const QuickAndFastList({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 194, 185, 185).withOpacity(0.7),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                foods.length,
                (index) => GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(pameran: foods[index]),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(foods[index].image),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              foods[index].name,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "${foods[index].IDR} K From IDR |",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Text(
                                  " · ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const Icon(
                                  Iconsax.location,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "${foods[index].map} Jl",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          top: 160,
                          right: 1,
                          child: IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              //backgroundColor: Color.fromARGB(255, 228, 179, 18),
                              fixedSize: const Size(5, 5),
                            ),
                            iconSize: 15,
                            icon: const Icon(Iconsax.arrow_right4),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
