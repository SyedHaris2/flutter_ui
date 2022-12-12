import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui/CakePages/cupcake_page.dart';
import 'package:flutter_ui/Pages/home_page.dart';

class CookingPage extends StatefulWidget {
  const CookingPage({super.key});

  @override
  State<CookingPage> createState() => _CookingPageState();
}

class _CookingPageState extends State<CookingPage> {
  bool isSelected = false;
  bool selected = false;
  bool isSelectedColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xff6C60E1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0))),
              height: 200,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              },
                              icon: const Icon(
                                Icons.arrow_left,
                                color: Colors.white,
                                size: 30.0,
                              )),
                          const Text(
                            'Cooking',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 30.0,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
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
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 320, top: 13),
              child: Text(
                'Labels',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            //chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffC0BBF3),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: IconButton(

                          //   color: const Color(0xffB4AEF0),
                          onPressed: () {},
                          icon: const Icon(Icons.add)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                      padding: const EdgeInsets.all(8.0),
                      selectedColor: const Color(0xffC0BBF3),
                      label: const Text('ALL'),
                      selected: isSelected,
                      onSelected: (newValue) {
                        setState(() {
                          isSelected = newValue;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                      padding: const EdgeInsets.all(8.0),
                      selectedColor: const Color(0xffC0BBF3),
                      label: const Text('CAKE'),
                      selected: isSelected,
                      onSelected: (newValue) {
                        setState(() {
                          selected = newValue;
                        });
                      },
                    ),
                  ),
                  ChoiceChip(
                    padding: const EdgeInsets.all(8.0),
                    selectedColor: const Color(0xffC0BBF3),
                    label: const Text('FAST FOOD'),
                    selected: isSelected,
                    onSelected: (newValue) {
                      setState(() {
                        isSelected = newValue;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                      padding: const EdgeInsets.all(8.0),
                      selectedColor: const Color(0xffC0BBF3),
                      label: const Text('CAKE'),
                      selected: isSelected,
                      onSelected: (newValue) {
                        setState(() {
                          isSelected = newValue;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                      padding: const EdgeInsets.all(8.0),
                      selectedColor: const Color(0xffC0BBF3),
                      label: const Text('CAKE'),
                      selected: isSelected,
                      onSelected: (newValue) {
                        setState(() {
                          isSelected = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            //icons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark),
                      label: const Text('Bookmarks',
                          style: TextStyle(
                              color: Color(0xff58586B),
                              fontSize: 22,
                              fontWeight: FontWeight.bold))),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Row(
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
                  ),
                ],
              ),
            ),
            //vanilla cake
            SingleChildScrollView(
                child: Card(
              elevation: 12.0,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(12.0)),
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                height: 120,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/cupcake.png',
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Vanillacake',
                            style: TextStyle(
                                color: Color(0xff646476), fontSize: 22),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  iconSize: 30,
                                  onPressed: () {
                                    setState(() {
                                      isSelectedColor = !isSelectedColor;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.notifications,
                                    color: isSelectedColor
                                        ? const Color(0xffC0BBF3)
                                        : const Color(0XFFFF8A00),
                                  )),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isSelectedColor = !isSelectedColor;
                                  });
                                },
                                icon: const Icon(Icons.star),
                                color: isSelectedColor
                                    ? const Color(0XFFFF8A00)
                                    : const Color(0xffC0BBF3),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Image.asset(
                        'assets/door.png',
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
            )
                //13:1
                ),
            //cupcake

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CupCakePage()));
              },
              child: SingleChildScrollView(
                  child: Card(
                elevation: 12.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: const EdgeInsets.all(10.0),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  height: 120,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/vanilla.png',
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Cupcake',
                              style: TextStyle(
                                  color: Color(0xff646476), fontSize: 22),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    iconSize: 30,
                                    onPressed: () {
                                      setState(() {
                                        isSelectedColor = !isSelectedColor;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.notifications,
                                      color: isSelectedColor
                                          ? const Color(0xffC0BBF3)
                                          : const Color(0XFFFF8A00),
                                    )),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isSelectedColor = !isSelectedColor;
                                    });
                                  },
                                  icon: const Icon(Icons.star),
                                  color: isSelectedColor
                                      ? const Color(0XFFFF8A00)
                                      : const Color(0xffC0BBF3),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 48.0),
                        child: Image.asset(
                          'assets/door.png',
                          height: 60,
                        ),
                      ),
                    ],
                  ),
                ),
              )
                  //13:1
                  ),
            ),

            //PANCAKE
            SingleChildScrollView(
                child: Card(
              elevation: 12.0,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(12.0)),
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                height: 120,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/pancakes.png',
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Pancake',
                            style: TextStyle(
                                color: Color(0xff646476), fontSize: 22),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  iconSize: 30,
                                  onPressed: () {
                                    setState(() {
                                      isSelectedColor = !isSelectedColor;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.notifications,
                                    color: isSelectedColor
                                        ? const Color(0xffC0BBF3)
                                        : const Color(0XFFFF8A00),
                                  )),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isSelectedColor = !isSelectedColor;
                                  });
                                },
                                icon: const Icon(Icons.star),
                                color: isSelectedColor
                                    ? const Color(0XFFFF8A00)
                                    : const Color(0xffC0BBF3),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Image.asset(
                        'assets/door.png',
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
            )
                //13:1
                ),
            //DONAT
            SingleChildScrollView(
                child: Card(
              elevation: 12.0,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(12.0)),
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                height: 120,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/donat.png',
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Donat',
                            style: TextStyle(
                                color: Color(0xff646476), fontSize: 22),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  iconSize: 30,
                                  onPressed: () {
                                    setState(() {
                                      isSelectedColor = !isSelectedColor;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.notifications,
                                    color: isSelectedColor
                                        ? const Color(0xffC0BBF3)
                                        : const Color(0XFFFF8A00),
                                  )),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isSelectedColor = !isSelectedColor;
                                  });
                                },
                                icon: const Icon(Icons.star),
                                color: isSelectedColor
                                    ? const Color(0XFFFF8A00)
                                    : const Color(0xffC0BBF3),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Image.asset(
                        'assets/door.png',
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
            )
                //13:1
                ),
          ],
        ),
      ),
    );
  }
}

/*
Card(
              elevation: 8.0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              image: AssetImage('assets/cupcake.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'Vanilla cake',
                        style:
                            TextStyle(color: Color(0xff646476), fontSize: 22),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications)),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.star))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
*/