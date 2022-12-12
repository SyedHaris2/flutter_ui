import 'package:flutter/material.dart';
import 'package:flutter_ui/Pages/Cooking/cooking_screen.dart';
import 'package:flutter_ui/Widget/reuse_textformfield.dart';

class CupCakePage extends StatefulWidget {
  const CupCakePage({super.key});

  @override
  State<CupCakePage> createState() => _CupCakePageState();
}

class _CupCakePageState extends State<CupCakePage> {
  final titleContr = TextEditingController();
  final urlContr = TextEditingController();
  final decsContr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6C60E1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff6C60E1),
              ),
              height: 150,
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
                                            const CookingPage()));
                              },
                              icon: const Icon(
                                Icons.arrow_left,
                                color: Colors.white,
                                size: 30.0,
                              )),
                          const Text(
                            'Cupcake',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 30.0,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Design
            Container(
              height: 600,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)),
                color: Color(0xffFFFFFF),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18.0, vertical: 17),
                      child: Text(
                        'Title',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TextFormField(
                            controller: titleContr,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.title)),
                                hintText: 'Title',
                                fillColor: Colors.grey[200],
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 17),
                      child: Text(
                        'Url',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ReusedTextformfield(
                      controller: urlContr,
                      title: 'Url',
                      iconData: Icons.link,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 17),
                      child: Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ReusedTextformfield(
                      controller: decsContr,
                      title: 'Description',
                      iconData: Icons.description,
                    ),
                    //photos

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 17),
                      child: Row(
                        children: const [
                          Icon(Icons.image),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Text(
                              'Photos',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //ROW IMAGES
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffE7E4FF),
                            borderRadius: BorderRadius.circular(12.0)),
                        height: 100,
                        width: 400,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    size: 28,
                                    //   color: Color(0xffE7E4FF),
                                  )),
                              const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                maxRadius: 40,
                                backgroundImage: AssetImage(
                                  'assets/vanilla.png',
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                maxRadius: 40,
                                backgroundImage: AssetImage(
                                  'assets/donat.png',
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                maxRadius: 40,
                                backgroundImage: AssetImage(
                                  'assets/pancakes.png',
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                maxRadius: 40,
                                backgroundImage: AssetImage(
                                  'assets/cupcake.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 18),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: const Color(0xffA893F5),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xffA893F5))),
                                child: const Center(
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 18),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: const Color(0xffA893F5),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xffA893F5))),
                                child: const Center(
                                  child: Text(
                                    // textAlign: TextAlign.center,
                                    'Save',
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //design end
          ],
        ),
      ),
    );
  }
}
