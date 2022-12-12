import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableWidget extends StatelessWidget {
  String image1, image2, text;

  ReusableWidget(
      {required this.image1,
      required this.image2,
      required this.text,
      super.key});

  bool isSelectedColor = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                image1,
                height: 80,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                          color: Color(0xff646476), fontSize: 22),
                    ),
                    Row(
                      children: [
                        IconButton(
                            iconSize: 30,
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications,
                              color: isSelectedColor
                                  ? const Color(0xffC0BBF3)
                                  : const Color(0XFFFF8A00),
                            )),
                        IconButton(
                          iconSize: 30,
                          onPressed: () {},
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
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Image.asset(
                  image2,
                  height: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
 SingleChildScrollView(
              child: Card(
                elevation: 12.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: const EdgeInsets.all(10.0),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  height: 110,
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
                              'Vanilla Cake',
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
                                  iconSize: 30,
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
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Image.asset(
                          'assets/cupcake.png',
                          height: 80,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //13:1
            ),
*/