import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              // Search bar
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 50,
                child: const TextField(
                        decoration: InputDecoration(
                        prefixIcon:  Icon(Icons.search),
                        filled: true,
                        fillColor: Color.fromARGB(255, 247, 244, 244),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(     
                        Radius.circular(20.0),
                        ),
                    ),
                  ),
                ),      
              ),
            ],
          ),
          // Kategori event
          Row(
            children: [
              // Workshop
              TextButton(
                onPressed: () {},
                child: Text('Workshop'),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
              // Event
              TextButton(
                onPressed: () {},
                child: Text('Event'),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
              // Pameran
              TextButton(
                onPressed: () {},
                child: Text('Pameran'),
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
              // Festival budaya
              TextButton(
                onPressed: () {},
                child: Text('Festival budaya'),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
            ],
          ),
          // ListView
          Expanded(
            child: ListView(
              children: [
                // Gambar pameran
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          'assets/Pameran1.png',
                          width: double.infinity,
                          height: 214,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                // Judul pameran
              
                // Detail pameran
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: const Column(
                    children: [
                      // Nama galeri
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Pameran'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                      // Harga
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('From IDR 10k'),
                        ],
                      ),
                      // Lokasi
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.map),
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                    ],
                  ),
                ),

                
                // Judul pameran
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          'assets/Pameran2.png',
                          width: double.infinity,
                          height: 214,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                // Detail pameran
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Column(
                    children: [
                      // Nama galeri
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                      // Harga
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('From IDR 10k'),
                        ],
                      ),
                      // Lokasi
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.map),
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          'assets/Pameran3.png',
                          width: double.infinity,
                          height: 214,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                // Judul pameran
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Pameran'),
                  ),
                ),
                // Detail pameran
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Column(
                    children: [
                      // Nama galeri
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                      // Harga
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('From IDR 10k'),
                        ],
                      ),
                      // Lokasi
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.map),
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          'assets/Pameran4.png',
                          width: double.infinity,
                          height: 214,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                // Judul pameran
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Pameran'),
                  ),
                ),
                // Detail pameran
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Column(
                    children: [
                      // Nama galeri
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                      // Harga
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('From IDR 10k'),
                        ],
                      ),
                      // Lokasi
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.map),
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          'assets/Pameran5.png',
                          width: double.infinity,
                          height: 214,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                // Judul pameran
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Pameran'),
                  ),
                ),
                // Detail pameran
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Column(
                    children: [
                      // Nama galeri
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                      // Harga
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('From IDR 10k'),
                        ],
                      ),
                      // Lokasi
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.map),
                          Text('Orasis Art Gallery'),
                        ],
                      ),
                    ],
                  ),
                ),
              
              ],


              
            ),
          ),
          // Tombol kembali
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              child: Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
