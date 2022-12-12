import 'package:flutter/material.dart';
import 'package:flutter_ui/Pages/Cooking/cooking_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List colorData = [
    {
      "color": const Color(0xffFFF3C6),
      "images": 'assets/idea.png',
      "title": 'New Ideas'
    },
    {
      "color": const Color(0xffD7EFFF),
      "images": 'assets/open-book.png',
      "title": 'Books'
    },
    {
      "color": const Color(0xffE0D7FF),
      "images": 'assets/lcd.png',
      "title": 'Programming'
    },
    {
      "color": const Color(0xffFBE1FB),
      "images": 'assets/cupcake.png',
      "title": 'Cooking'
    },
    {
      "color": const Color(0xffB8EEDC),
      "images": 'assets/aeroplane.png',
      "title": 'Travel'
    },
    {
      "color": const Color(0xffFFDFCD),
      "images": 'assets/chat.png',
      "title": 'Mobile'
    },
  ];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          height: 60,
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.add), label: 'Add'),
            NavigationDestination(
              icon: Icon(Icons.star_border_outlined),
              label: 'Rating',
            )
          ]),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xff6C60E1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0))),
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.menu_open_sharp,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Text(
                    'Hi Haris',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Text(
                    'Welcome Back 👋',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'What Category are you Seaching for?',
                        hoverColor: const Color(0xffA7A0EC),
                        fillColor: const Color(0xffA7A0EC),
                        filled: true),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff717182),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.delete,
                      size: 30,
                      color: Color(0xff968EE9),
                    ),
                    Icon(
                      Icons.person,
                      size: 30,
                      color: Color(0xff968EE9),
                    ),
                    Icon(
                      Icons.keyboard_double_arrow_up_rounded,
                      size: 30,
                      color: Color(0xff968EE9),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: colorData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CookingPage()));
                      },
                      child: Card(
                        elevation: 6.0,
                        color: colorData[index]['color'],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              colorData[index]["images"],
                              height: 80,
                            ),
                            Text(
                              colorData[index]["title"],
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  color: Colors.deepPurple[300]),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
