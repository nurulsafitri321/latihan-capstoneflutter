import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pameran/screens/metode_pembayaran.dart';




class DetailScreen extends StatefulWidget {
  final pameran;
  const DetailScreen({super.key, required this.pameran});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  // Handle favorite button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle shopping cart button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Handle message button press
                },
              ),
            ],
          ), 
        ],
      ),
      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.all(10),
      //   child: Row(
          // children: [
          //   Expanded(
          //     flex: 6,
          //     child: ElevatedButton(
          //       onPressed: () {},
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: kprimaryColor,
          //         foregroundColor: Colors.white,
          //       ),
          //       child: const Text("Bayar Sekarang"),
          //     ),
          //   ),
          //   const SizedBox(width: 10),
          //   Expanded(
          //     child: IconButton(
          //       onPressed: () {},
          //       style: IconButton.styleFrom(
          //         shape: CircleBorder(
          //           side: BorderSide(
          //             color: Colors.grey.shade300,
          //             width: 2,
          //           ),
          //         ),
          //       ),
          //       icon: Icon(
          //         widget.food.isLiked ? Iconsax.heart5 : Iconsax.heart,
          //         color: widget.food.isLiked ? Colors.red : Colors.black,
          //         size: 20,
          //       ),
          //     ),
          //   ),
          // ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.pameran.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                
                Positioned(
                  left: 0,
                  right: 0,
                  top: MediaQuery.of(context).size.width - 50,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.only(
                      //   topRight: Radius.circular(20),
                      //   topLeft: Radius.circular(20),
                      // ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.pameran.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(
                        Iconsax.location4,
                        color: const Color.fromARGB(255, 53, 51, 45),
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Museum Macan",
                        style: TextStyle(
                          fontSize: 16,
                          color:  Color.fromARGB(255, 5, 5, 5),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      SizedBox(width: 5),
                      Text(
                        "Jalan Perjuagan, Rt,11/Rw.10, Kebon Jeruk",
                        style: TextStyle(
                          fontSize: 20,
                          color:  Color.fromARGB(255, 143, 129, 129),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      SizedBox(width: 5),
                      Text(
                        "Menampilkan di Peta",
                        style: TextStyle(
                          fontSize: 14,
                          color:  Color.fromARGB(255, 40, 91, 184)
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Deskripsi",
                            style: TextStyle(
                              fontSize: 20,  
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Tentang Museum Macan",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Voice Against Reason adalah pameran besar \nyang melibatkan 24 perupa dari Australia, \nBangladesh, India, Indonesia, Jepang, \nSingapura, Taiwan, Thailand, dan Vietnam.",
                            style: TextStyle(
                              fontSize: 20, 
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Baca Selengkapnya",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.blueAccent 
                            ),
                          ),
                      
                          SizedBox(height: 25),
                          Text(
                            "Tiket",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                          SizedBox(height: 10),
                          Text(
                            "",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      // const Spacer(),
                      // PameranCounter(
                      //   currentNumber: currentNumber,
                      //   onAdd: () => setState(() {
                      //     currentNumber++;
                      //   }),
                      //   onRemove: () {
                      //     if (currentNumber != 1) {
                      //       setState(() {
                      //         currentNumber--;
                      //       });
                      //     }
                      //   },
                      // )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(widget.pameran.image),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Tickets Museum Macan \nWEEKDAY",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "\n\nRp 50.000",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 16, 119, 204),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                                  icon: Icon(Icons.delete, color: const Color.fromARGB(255, 0, 0, 0)),
                                  onPressed: () {},
                                ),
                          ElevatedButton(
                            onPressed: () {
                              // Tambahkan logika untuk menyimpan tiket
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PaymentMethodScreen1()), // Ganti dengan rute yang sesuai
                              );
                            },
                            child: Text(
                              "Pesan",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                          ),

                          // Text(
                          //   "Pesan",
                          //   style: TextStyle(
                          //     fontSize: 16,
                          //     color: Colors.grey.shade400,
                          //   ),
                          // )
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey.shade300,
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(widget.pameran.image),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                          "Tickets Museum Macan \nWEEKEND",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "\n\nRp 70.000",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 16, 119, 204),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                                  icon: const Icon(Icons.delete, color: Color.fromARGB(255, 0, 0, 0)),
                                  onPressed: () {},
                                ),
                          ElevatedButton(
                            onPressed: () {
                              // Tambahkan logika untuk menyimpan tiket
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PaymentMethodScreen1()), // Ganti dengan rute yang sesuai
                              );
                            },
                            child: Text(
                              "Pesan",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                          const Text(
                            "Merchandise",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                          
                    ],
                    
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}