import 'package:app_o8/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final saladlist = [
    {
      'images': 'assets/images/download (1).jpg',
      'title': 'Valentino veneto,',
      'desc': 'Delicate aramas with a, delicious citrus flavour',
      'price': '\$16.95',
    },
    {
      'images': 'assets/images/download (2).jpg',
      'title': 'The Humblodt,',
      'desc': 'Intense yellow in colour with solt , rice creamy and vanilla aramas',
      'price': '\$16.95',
    },
    {
      'images': 'assets/images/download (3).jpg',
      'title': 'Waters Edge, White,',
      'desc': 'Delicate and refreshing with, delicious soft fruit flavours',
      'price': '\$16.95',
    },
    {
      'images': 'assets/images/download.jpg',
      'title': 'The Lady Hamilton',
      'desc': 'Vibrant pink in colour with final aramas, this medium boldled xjdghkjdzshgk zdskjgh dszkfghzdjklf ghzkjd ghkjlh',
      'price': '\$16.95',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.white,
            drawer: const Drawer(child: drawer1()),
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: const Color.fromARGB(255, 43, 217, 66),
              centerTitle: true,
              title: const Text(
                'Categories',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              bottom: const TabBar(
                indicatorColor: Colors.black,
                tabs: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: const Text(
                      'Salads',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: const Text(
                      'Side Dishes',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                ListView.builder(
                  itemCount: saladlist.length,
                  itemBuilder: (context, index) {
                    final item = saladlist[index];
                    return Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                           BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              item['images']!,
                              fit: BoxFit.cover,
                              height: 70,
                              width: 70,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['title'] ?? '',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                             
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  item['desc'] ?? '',
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                             
                              Text(
                                item['price'] ?? '',
                                
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                saladlist.removeAt(index);
                              });
                            },

                            child:
                             Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child:
                               const Text(
                                'Delivered',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
                const SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                        child: Text(
                      'GO BACK',
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
                    ))
                  ],
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
