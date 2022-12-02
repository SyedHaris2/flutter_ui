import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui/Pages/home_page.dart';

class CookingPage extends StatefulWidget {
  const CookingPage({super.key});

  @override
  State<CookingPage> createState() => _CookingPageState();
}

class _CookingPageState extends State<CookingPage> {
  bool isSelected = false;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                                      builder: (context) => const HomePage()));
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
          SingleChildScrollView(
            child: Card(
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
            //13:1
          )
        ],
      ),
    );
  }
}
